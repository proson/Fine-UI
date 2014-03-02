
(function () {

    F.ajax = {

        timeoutErrorMsg: "Request timeout, please refresh the page and try again!",
        errorMsg: "Error! {0} ({1})",
        errorWindow: null,

        hookPostBack: function () {
            if (typeof (__doPostBack) != 'undefined') {
                __doPostBack = f__doPostBack;
            }
        }

    };

    function enableAjax() {
        if (typeof (F.control_enable_ajax) === 'undefined') {
            return F.global_enable_ajax;
        }
        return F.control_enable_ajax;
    }

    function enableAjaxLoading() {
        if (typeof (F.control_enable_ajax_loading) === 'undefined') {
            return F.global_enable_ajax_loading;
        }
        return F.control_enable_ajax_loading;
    }

    function ajaxLoadingType() {
        if (typeof (F.control_ajax_loading_type) === 'undefined') {
            return F.global_ajax_loading_type;
        }
        return F.control_ajax_loading_type;
    }


    function f__doPostBack_internal() {
        //if (typeof (F.util.beforeAjaxPostBackScript) === 'function') {
        //    F.util.beforeAjaxPostBackScript();
        //}
        F.util.triggerBeforeAjax();

        // Ext.encode will convert Chinese characters. Ext.encode({a:"你好"}) => '{"a":"\u4f60\u597d"}'
        // We will include the official JSON object from http://json.org/
        // 现在还是用的 Ext.encode，在 IETester的 IE8下 JSON.stringify 生成的中文是\u9009\u9879形式。
        //F.util.setHiddenFieldValue('F_STATE', encodeURIComponent(JSON.stringify(getFState())));

        var fstate = Ext.encode(getFState());
        if (Ext.isIE6 || Ext.isIE7) {
            F.util.setHiddenFieldValue('F_STATE_URI', 'true');
            fstate = encodeURIComponent(fstate);
        } else {
            fstate = Base64.encode(fstate);
        }
        F.util.setHiddenFieldValue('F_STATE', fstate);
        //F.util.setHiddenFieldValue('F_STATE', encodeURIComponent(Ext.encode(getFState())));
        if (!enableAjax()) {
            // 当前请求结束后必须重置 F.control_enable_ajax
            F.control_enable_ajax = undefined;
            F.util.setHiddenFieldValue('F_AJAX', 'false');
            theForm.submit();
        } else {
            // 当前请求结束后必须重置 F.control_enable_ajax
            F.control_enable_ajax = undefined;
            F.util.setHiddenFieldValue('F_AJAX', 'true');
            var url = document.location.href;
            var urlHashIndex = url.indexOf('#');
            if (urlHashIndex >= 0) {
                url = url.substring(0, urlHashIndex);
            }
            Ext.Ajax.request({
                form: theForm.id,
                url: url,
                isUpload: F.form_upload_file,
                //params: serializeForm(theForm) + '&X_AJAX=true',
                success: function (data) {
                    var scripts = data.responseText;
                    if (scripts) {
                        if (F.form_upload_file) {
                            // 文件上传时，输出内容经过encodeURIComponent编码（在ResponseFilter中的Close函数中）
                            //scripts = scripts.replace(/<\/?pre[^>]*>/ig, '');
                            scripts = decodeURIComponent(scripts);
                        }

                        try {
                            new Function(scripts)();
                        } catch (e) {
                            createErrorWindow({
                                statusText: "Unexpected Response",
                                status: -1,
                                responseText: F.util.htmlEncode(scripts)
                            });
                        }
                    }
                    // 有可能响应返回后即关闭本窗体
                    if (F && F.util) {
                        F.util.triggerAjaxReady();
                    }
                },
                failure: function (data) {
                    var lastDisabledButtonId = F.util.getHiddenFieldValue('F_TARGET');
                    if (lastDisabledButtonId) {
                        F.enable(lastDisabledButtonId);
                    }
                    createErrorWindow(data);
                },
                callback: function (options, success, response) {
                    // AJAX结束时需要清空此字段，否则下一次的type=submit提交（ASP.NET回发方式之一）会被误认为是AJAX提交
                    if (F && F.util) {
                        F.util.setHiddenFieldValue('F_AJAX', 'false');
                    }
                }
            });
        }
    }


    // 如果启用 Ajax，则所有对 __doPostBack 的调用都会到这里来
    function f__doPostBack(eventTarget, eventArgument) {
        // 回发页面之前延时 100 毫秒，确保页面上的操作完成（比如选中复选框的动作）
        window.setTimeout(function () {
            // theForm variable will always exist, because we invoke the GetPostBackEventReference in PageManager.
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;

                f__doPostBack_internal();
            }
        }, 100);
    }


    function writeContentToIFrame(iframe, content) {
        // http://stackoverflow.com/questions/1477547/getelementbyid-contentdocument-error-in-ie
        // contentWindow is always there.
        if (iframe) {
            var doc = iframe.contentWindow.document;
            if (doc) {
                doc.open();
                doc.write(content);
                doc.close();
            }
        }
    }

    // 创建出错窗口
    function createErrorWindow(data) {
        // 如果是请求超时错误，则弹出简单提醒对话框
        if (data.isTimeout) {
            F.util.alert(F.ajax.timeoutErrorMsg);
            return;
        }

        // 如果响应正文为空，则弹出简单提醒对话框
        if (!data.responseText) {
            F.util.alert(Ext.String.format(F.ajax.errorMsg, data.statusText, data.status));
            return;
        }

        if (!F.ajax.errorWindow) {
            F.ajax.errorWindow = Ext.create('Ext.window.Window', {
                id: "FINEUI_ERROR",
                renderTo: window.body,
                width: 550,
                height: 350,
                border: true,
                animCollapse: true,
                collapsible: false,
                collapsed: false,
                closeAction: "hide",
                plain: false,
                modal: true,
                draggable: true,
                minimizable: false,
                minHeight: 100,
                minWidth: 200,
                resizable: true,
                maximizable: true,
                closable: true
            });
        }

        F.ajax.errorWindow.show();
        F.ajax.errorWindow.body.dom.innerHTML = F.wnd.createIFrameHtml('about:blank', 'FINEUI_ERROR');
        F.ajax.errorWindow.setTitle(Ext.String.format(F.ajax.errorMsg, data.statusText, data.status));
        writeContentToIFrame(F.ajax.errorWindow.body.query('iframe')[0], data.responseText);
    }

    // 序列化表单为 URL 编码字符串，除去 <input type="submit" /> 的按钮
    var extjsSerializeForm = Ext.Element.serializeForm;
    Ext.Element.serializeForm = function (form) {
        var el, originalStr = extjsSerializeForm(form);
        for (var i = 0; i < form.elements.length; i++) {
            el = form.elements[i];
            if (el.type === 'submit') {
                var submitStr = encodeURIComponent(el.name) + '=' + encodeURIComponent(el.value);
                if (originalStr.indexOf(submitStr) == 0) {
                    originalStr = originalStr.replace(submitStr, '');
                } else {
                    originalStr = originalStr.replace('&' + submitStr, '');
                }
            }
        }
        return originalStr;
    };


    function getFState() {
        var state = {};
        Ext.ComponentManager.each(function (key, cmp) {
            if (cmp.isXType) {
                // f_props store the properties which has been changed on server-side or client-side.
                // Every FineUI control should has this property.
                var fstate = cmp['f_state'];
                if (fstate && Ext.isObject(fstate)) {
                    var cmpState = getFStateViaCmp(cmp, fstate);
                    if (!F.util.isObjectEmpty(cmpState)) {
                        state[cmp.id] = cmpState;
                    }
                }
            }
        });
        return state;
    }

    F.ajax.getFState = getFState;

    function getFStateViaCmp(cmp, fstate) {
        var state = {};

        Ext.apply(state, fstate);

        function saveInHiddenField(property, currentValue) {
            // Save this client-changed property in a form hidden field. 
            F.util.setHiddenFieldValue(cmp.id + '_' + property, currentValue);
        }
        function removeHiddenField(property) {
            F.util.removeHiddenField(cmp.id + '_' + property);
        }

        // 如果存在Gzip压缩的属性，就删除原来的属性
        function resolveGZProperty(property) {
            var gzProperty = property + '_GZ';
            if (state[gzProperty]) {
                delete state[property];
            } else {
                delete state[gzProperty];
            }
        }



        // 有些属性可以在客户端改变，因此需要在每个请求之前计算
        if (cmp.isXType('menucheckitem')) {
            saveInHiddenField('Checked', cmp.checked);
        }

        if (cmp.isXType('checkbox')) {
            // 包含RadioButton
            saveInHiddenField('Checked', cmp.getValue());
        }

        if (cmp.isXType('checkboxgroup')) {
            var selected = cmp.f_getSelectedValues();
            if (selected.length > 0) {
                saveInHiddenField('SelectedValueArray', selected.join(','));
            } else {
                removeHiddenField('SelectedValueArray');
            }
        }

        if (cmp.isXType('panel') || cmp.isXType('fieldset')) {
            saveInHiddenField('Collapsed', cmp.f_isCollapsed());
        }

        if (cmp.isXType('datepicker')) {
            saveInHiddenField('SelectedDate', Ext.Date.format(cmp.getValue(), cmp.initialConfig.format));
        }

        if (cmp.isXType('button')) {
            if (cmp.initialConfig.enableToggle) {
                saveInHiddenField('Pressed', cmp.pressed);
            }
        }

        if (cmp.isXType('grid')) {

            //if (cmp.getPlugin(cmp.id + '_celledit')) {
            if(cmp.f_cellEditing) {
                // 可编辑单元格的表格
                // 选中单元格
                saveInHiddenField('SelectedCell', cmp.f_getSelectedCell().join(','));

                // 新增行
                var newAddedRows = cmp.f_getNewAddedRows();
                if (newAddedRows.length > 0) {
                    saveInHiddenField('NewAddedRows', newAddedRows.join(','));
                } else {
                    removeHiddenField('NewAddedRows');
                }

                // 修改的数据
                var modifiedData = cmp.f_getModifiedData();
                if (modifiedData.length > 0) {
                    saveInHiddenField('ModifiedData', Ext.encode(modifiedData));
                } else {
                    removeHiddenField('ModifiedData');
                }

                // 删除的行索引列表
                var deletedRows = cmp.f_getDeletedRows();
                if (deletedRows.length > 0) {
                    saveInHiddenField('DeletedRows', deletedRows.join(','));
                } else {
                    removeHiddenField('DeletedRows');
                }

            } else {
                // 普通的表格
                // 选中行索引列表
                saveInHiddenField('SelectedRowIndexArray', cmp.f_getSelectedRows().join(','));
            }


            // 隐藏的列索引列表
            var gridHiddenColumns = cmp.f_getHiddenColumns();
            if (gridHiddenColumns.length > 0) {
                saveInHiddenField('HiddenColumns', gridHiddenColumns.join(','));
            } else {
                removeHiddenField('HiddenColumns');
            }

            // 目前States仅用于CheckBoxField
            var gridStates = cmp.f_getStates();
            if (gridStates.length > 0) {
                saveInHiddenField('States', Ext.encode(gridStates));
            } else {
                removeHiddenField('States');
            }

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('F_Rows');
        }

        if (cmp.isXType('combo') || cmp.isXType('checkboxgroup') || cmp.isXType('radiogroup')) {

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('F_Items');
        }

        if (cmp.isXType('field')) {

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('Text');
        }

        if (cmp.isXType('treepanel')) {
            saveInHiddenField('ExpandedNodes', cmp.f_getExpandedNodes(cmp.getRootNode().childNodes).join(','));
            saveInHiddenField('CheckedNodes', cmp.f_getCheckedNodes().join(','));
            saveInHiddenField('SelectedNodeIDArray', cmp.f_getSelectedNodes().join(','));

            // 如果存在 GZIPPED 的属性，就用 GZIPPED 属性
            resolveGZProperty('F_Nodes');
        }

        if (cmp.isXType('tabpanel')) {
            saveInHiddenField('ActiveTabIndex', cmp.f_getActiveTabIndex());
        }

        if (cmp.isXType('panel') && cmp.getLayout().type === 'accordion') {
            saveInHiddenField('ActivePaneIndex', cmp.f_getActiveIndex());
        }

        if (cmp['f_type'] && cmp['f_type'] === 'tab') {
            saveInHiddenField('Hidden', cmp.tab.isHidden());
        }

        return state;
    }



    // 显示“正在载入...”的提示信息
    function _showAjaxLoading(ajaxLoadingType) {
        if (_requestCount > 0) {

            if (ajaxLoadingType === "default") {
                F.ajaxLoadingDefault.setStyle('left', (Ext.getBody().getWidth() - F.ajaxLoadingDefault.getWidth()) / 2 + 'px');
                F.ajaxLoadingDefault.show();
            } else {
                F.ajaxLoadingMask.show();
            }

        }
    }

    // 隐藏“正在载入...”的提示信息
    function _hideAjaxLoading(ajaxLoadingType) {
        if (_requestCount <= 0) {
            _requestCount = 0;

            if (ajaxLoadingType === "default") {
                F.ajaxLoadingDefault.hide();
            } else {
                F.ajaxLoadingMask.hide();
            }

        }
    }

    // 当前 Ajax 的并发请求数
    var _requestCount = 0;

    // 发起 Ajax 请求之前事件处理
    Ext.Ajax.on('beforerequest', function (conn, options) {
        _requestCount++;

        if (!enableAjaxLoading()) {
            // Do nothing
        } else {
            Ext.defer(_showAjaxLoading, 50, window, [ajaxLoadingType()]);
        }
    });

    // Ajax 请求结束
    Ext.Ajax.on('requestcomplete', function (conn, options) {
        _requestCount--;

        if (!enableAjaxLoading()) {
            // ...
        } else {
            Ext.defer(_hideAjaxLoading, 0, window, [ajaxLoadingType()]);
        }
        F.control_enable_ajax_loading = undefined;
        F.control_ajax_loading_type = undefined;
    });

    // Ajax 请求发生异常
    Ext.Ajax.on('requestexception', function (conn, options) {
        _requestCount--;

        if (!enableAjaxLoading()) {
            // ...
        } else {
            Ext.defer(_hideAjaxLoading, 0, window, [ajaxLoadingType()]);
        }
        F.control_enable_ajax_loading = undefined;
        F.control_ajax_loading_type = undefined;
    });






    //        // 不适用于所有Extjs控件（比如Toolbar中放置按钮，这个按钮就没有ownerCt对象）
    //        // 更新一个Javascript对象
    //        updateObject: function(obj, newObjFunction, renderImmediately) {
    //            var id = obj.id;
    //            if (Ext.type(renderImmediately) == 'boolean' && !renderImmediately) {

    //                // 1.取得父容器
    //                var owner = obj.ownerCt;
    //                // 2.本控件在父容器的位置
    //                var insertIndex = owner.items.indexOf(obj);
    //                // 3.从父容器中销毁此控件
    //                owner.remove(obj);
    //                // 4.创建新的控件
    //                newObjFunction();
    //                // 5.将新的控件添加到删除的位置
    //                owner.insert(insertIndex, Ext.getCmp(id));
    //                // 6.父容器重新布局
    //                owner.doLayout();

    //            }
    //            else {

    //                // 1.销毁此控件
    //                obj.destroy();
    //                // 2.新建此控件
    //                newObjFunction();
    //            }
    //        }

})();