

(function () {

    // 计算黄金分割点的位置
    // bodySize : 整个页面的Body的大小 
    // windowSize : 窗口的大小
    function _calculateGoldenPosition(bodySize, windowSize) {
        var top = (bodySize.height - (bodySize.height / 1.618)) - windowSize.height / 2;
        if (top < 0) {
            top = 0;
        }
        var left = (bodySize.width - windowSize.width) / 2;
        if (left < 0) {
            left = 0;
        }
        return { left: left, top: top };
    }

    // 计算中间的位置
    // bodySize : 整个页面的Body的大小 
    // windowSize : 窗口的大小
    function _calculateCenterPosition(bodySize, windowSize) {
        var top = (bodySize.height - windowSize.height) / 2;
        if (top < 0) {
            top = 0;
        }
        var left = (bodySize.width - windowSize.width) / 2;
        if (left < 0) {
            left = 0;
        }
        return { left: left, top: top };
    }



    // 创建IFrame节点片段
    function _createIFrameHtml(iframeUrl, iframeName) {
        return '<iframe frameborder="0" style="overflow:auto;height:100%;width:100%;" name="' + iframeName + '" src="' + iframeUrl + '"></iframe>';
    }

    // 获取窗体的外部容器
    function _getWrapperNode(panel) {
        return Ext.get(panel.el.findParentNode('.x-window-wrapper'));
    }

    // FineUI窗口域（Window）
    F.wnd = {

        closeButtonTooltip: "Close this window",
        formModifiedConfirmTitle: "Close Confrim",
        formModifiedConfirmMsg: "Current form has been modified.<br/><br/>Abandon changes?",

        createIFrameHtml: function (iframeUrl, iframeName) {
            return _createIFrameHtml(iframeUrl, iframeName);
        },

        // 窗体定义：Original Panel / Ghost Panel

        // 显示一个弹出窗体
        // 在 panel 实例中，定义了几个自定义属性，用于标示此实例的状态（在PanelBase中定义）
        // 属性 - f_iframe/f_iframe_url/f_iframe_name/f_iframe_loaded
        // panel : 当前弹出的窗体（Ext-Window）
        // iframeUrl : 弹出窗体中包含的IFrame的地址
        // windowTitle : 弹出窗体的标题
        // left/top : 弹出窗体的左上角坐标（如果为空字符串，则使用中间位置或黄金分隔位置）
        // isGoldenSection : 弹出窗体位于页面的黄金分隔位置
        // hiddenHiddenFieldID : 隐藏表单字段记录此窗体是否弹出，也页面回发时保持状态用
        show: function (panel, iframeUrl, windowTitle, left, top, isGoldenSection, hiddenHiddenFieldID, width, height) {
            var target = F.util.getTargetWindow(panel['f_property_target']);
            var guid = panel['f_property_guid'];
            if (window.frameElement && target !== window) {
                // 当前页面在IFrame中（也即时 window.frameElement 存在）
                // 此弹出窗体需要在父窗口中弹出
                if (!target.F[guid]) {
                    // 父窗口中已经创建了这个Ext-Window对象
                    var wrapper = guid + '_wrapper';
                    if (!target.Ext.get(wrapper)) {
                        target.F.util.appendFormNode('<div class="x-window-wrapper" id="' + wrapper + '"></div>');
                    } else {
                        target.Ext.get(wrapper).dom.innerHTML = '';
                    }
                    // Ext.apply 的第三个参数是default obejct
                    var config = Ext.apply({}, {
                        'renderTo': wrapper,
                        'id': guid,
                        'f_property_window': window,
                        'f_property_ext_window': panel
                    }, panel.initialConfig);

                    // 在父页面中创建一个Ext-Window的幻影（拷贝）
                    target.F[guid] = target.Ext.create('Ext.window.Window', config);
                }
                panel = target.F[guid];
            }
            if (iframeUrl !== '') {
                F.wnd.updateIFrameNode(panel, iframeUrl);
            }
            if (windowTitle != '') {
                panel.setTitle(windowTitle);
            }

            if (width && height) {
                panel.setSize(width, height);
            }

            Ext.get(hiddenHiddenFieldID).dom.value = 'false';
            panel.show();

            if (left !== '' && top !== '') {
                panel.setPosition(parseInt(left, 10), parseInt(top, 10));
            } else {
                var bodySize = target.window.Ext.getBody().getViewSize();
                var panelSize = panel.getSize(), leftTop;
                if (isGoldenSection) {
                    leftTop = _calculateGoldenPosition(bodySize, panelSize);
                } else {
                    leftTop = _calculateCenterPosition(bodySize, panelSize);
                    //panel.alignTo(target.Ext.getBody(), "c-c");
                }
                panel.setPosition(leftTop.left, leftTop.top);
            }

            if (panel.maximizable) {
                F.wnd.fixMaximize(panel);
            }
        },

        // 获取Ghost Panel实例
        getGhostPanel: function (panel, targetName, guid) {
            if (typeof (targetName) === 'undefined') {
                targetName = panel.f_property_target;   
            }
            if (typeof (guid) === 'undefined') {
                guid = panel.f_property_guid;   
            }
            var target = F.util.getTargetWindow(targetName);
            if (window.frameElement && target !== window) {
                // 从父页面中查找幻影Ext-Window对象
                panel = target.F[guid];
            }
            return panel;
        },

        // 隐藏Ext-Window（比如用户点击了关闭按钮）
        hide: function (panel, targetName, enableIFrame, hiddenHiddenFieldID, guid) {
            var panel = F.wnd.getGhostPanel(panel, targetName, guid);
            // 修改当前页面中记录弹出窗口弹出状态的隐藏表单字段
            Ext.get(hiddenHiddenFieldID).dom.value = 'true';
            // 如果启用IFrame，则清空IFrame的内容，防止下次打开时显示残影
            if (enableIFrame) {
                // 如果不加延迟，IE下AJAX会出错，因为在success中已经把当前窗体关闭后，而后面还要继续使用本页面上相关对象
                window.setTimeout(function () {
                    panel['f_iframe_loaded'] = false;
                    panel.update("");
                }, 100);
            }
            panel.hide();
        },

        // 最大化
        maximize: function (panel, targetName, guid) {
            var panel = F.wnd.getGhostPanel(panel, targetName, guid);
            panel.maximize();
        },

        // 最小化
        minimize: function (panel, targetName, guid) {
            var panel = F.wnd.getGhostPanel(panel, targetName, guid);
            panel.minimize();
        },

        // 恢复窗体大小
        restore: function (panel, targetName, guid) {
            var panel = F.wnd.getGhostPanel(panel, targetName, guid);
            panel.restore();
        },

        // 这是 Extjs 的一个 bug，如果 Window 控件不是渲染在 document.body 中，则 maximize 函数并不能真正的最大化
        // 现在的 Window 控件时渲染在 from 表单里面的一个 DIV 中的
        fixMaximize: function (panel) {
            if (panel.maximized) {
                var target = F.util.getTargetWindow(panel['f_property_target']);
                var bodySize = target.window.Ext.getBody().getViewSize();
                panel.setSize(bodySize.width, bodySize.height);
                // 不要忘记左上角坐标
                panel.setPosition(0, 0);
            }
        },

        // 创建或更新IFrame节点，同时更新panel实例中的自定义属性值
        updateIFrameNode: function (panel, iframeUrl) {
            var iframeUrlChanged = false;
            panel = F.wnd.getGhostPanel(panel);
            // 如果此Panel中包含有IFrame
            if (panel && panel['f_iframe']) {
                if (iframeUrl && panel['f_iframe_url'] !== iframeUrl) {
                    panel['f_iframe_url'] = iframeUrl;
                    iframeUrlChanged = true;
                }
                // 如果此Panel中包含的IFrame还没有加载
                if (!panel['f_iframe_loaded']) {
                    window.setTimeout(function () {
                        // 如果此Panel已经创建完毕，但有时Panel可能是延迟创建的（比如TabStrip中的Tab，只有点击这个Tab时才创建Tab的内容）
                        panel['f_iframe_loaded'] = true;
                        panel.update(_createIFrameHtml(panel['f_iframe_url'], panel['f_iframe_name']));
                    }, 0);
                }
                else {
                    if (iframeUrlChanged) {
                        panel.body.query('iframe')[0].src = panel['f_iframe_url'];
                    }
                }
            }
        },


        // 处理表单中有任何字段发生变化时，关闭当前窗口时的提示
        confirmModified: function (closeFn) {
            if (F.util.isPageStateChanged()) {
                F.util.confirm('_self', F.wnd.formModifiedConfirmTitle, F.wnd.formModifiedConfirmMsg, function () {
                    closeFn.apply(window, arguments);
                });
            } else {
                closeFn.apply(window, arguments);
            }
        },


        // Ext-Window中IFrame里页面中的表单发生变化时弹出确认消息
        iframeModifiedConfirm: function (panel, closeFn) {
            // 这个页面所在的Window对象
            var pageWindow = F.wnd.getIFrameWindowObject(panel);
            // 如果弹出的页面没能正常加载（比如说网络暂时连接中断）
            // 则直接关闭弹出的Ext-Window，而不会去检查页面表单变化，因为页面对象不存在
            if (pageWindow.F) {
                pageWindow.F.wnd.confirmModified(closeFn);
            }
            else {
                panel.f_hide();
            }
        },

        // 取得Ghost Panel所在页面window对象
        getIFrameWindowObject: function (panel) {
            // 当前页面在IFrame中（也即时 window.frameElement 存在）
            // 此Ext-Window需要在父窗口中弹出
            /*
            if (window.frameElement && panel['f_property_show_in_parent']) {
                panel = parent.F[panel['f_property_guid']];
            }
            */
            panel = F.wnd.getGhostPanel(panel);
            var iframeNode = Ext.query('iframe', panel.body.dom);
            if (iframeNode.length === 0) {
                // 当前panel（Ext-Window）不包含iframe
                return window;
            }
            else {
                return iframeNode[0].contentWindow;
            }
        },

        // 返回当前活动Window组件对象（浏览器窗口对象通过F.wnd.getActiveWindow().window获取）
        getActiveWindow: function () {
            var activeWindow = parent.window;
            var activeExtWindow = parent.Ext.WindowManager.getActive(); //parent.F.f_window_manager.getActive();
            if (activeExtWindow) {
                if (activeExtWindow['f_property_window']) {
                    activeWindow = activeExtWindow['f_property_window'];
                    activeExtWindow = activeExtWindow['f_property_ext_window'];
                }
                activeExtWindow.window = activeWindow;
            }
            return activeExtWindow;
        },


        // 向弹出此Ext-Window的页面写入值
        writeBackValue: function () {
            var aw = F.wnd.getActiveWindow();
            var controlIds = aw['f_property_save_state_control_client_ids'];
            var controlCount = Math.min(controlIds.length, arguments.length);
            for (var i = 0; i < controlCount; i++) {
                aw.window.Ext.getCmp(controlIds[i]).setValue(arguments[i]);
            }
        }

    };

})();
