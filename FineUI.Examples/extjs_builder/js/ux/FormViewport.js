
Ext.define('Ext.ux.FormViewport', {
    extend: 'Ext.container.Container',

    isViewport: true,

    ariaRole: 'application',

    preserveElOnDestroy: true,

    viewportCls: Ext.baseCSSPrefix + 'viewport',

    initComponent: function () {
        var me = this,
            html = document.body.parentNode,
            el = me.el = Ext.getBody();

        /////开始 修改点一/////////////////////////////
        el = me.el = Ext.get(me.renderTo);
        var body = Ext.getBody();
        /////结束 修改点一/////////////////////////////


        // Get the DOM disruption over with before the Viewport renders and begins a layout
        Ext.getScrollbarSize();

        // Clear any dimensions, we will size later on
        me.width = me.height = undefined;

        me.callParent(arguments);
        Ext.fly(html).addCls(me.viewportCls);
        if (me.autoScroll) {
            Ext.fly(html).setStyle(me.getOverflowStyle());
            delete me.autoScroll;
        }
        el.setHeight = el.setWidth = Ext.emptyFn;
        el.dom.scroll = 'no';
        me.allowDomMove = false;
        me.renderTo = me.el;

    },

    // override here to prevent an extraneous warning
    applyTargetCls: function (targetCls) {
        this.el.addCls(targetCls);
    },

    onRender: function () {
        var me = this;

        me.callParent(arguments);

        // Important to start life as the proper size (to avoid extra layouts)
        // But after render so that the size is not stamped into the body
        me.width = Ext.Element.getViewportWidth();
        me.height = Ext.Element.getViewportHeight();
    },

    afterFirstLayout: function () {
        var me = this;

        me.callParent(arguments);
        setTimeout(function () {
            Ext.EventManager.onWindowResize(me.fireResize, me);
        }, 1);
    },

    fireResize: function (width, height) {
        // In IE we can get resize events that have our current size, so we ignore them
        // to avoid the useless layout...
        if (width != this.width || height != this.height) {
            this.setSize(width, height);
        }
    },

    initHierarchyState: function (hierarchyState) {
        this.callParent([this.hierarchyState = Ext.rootHierarchyState]);
    },

    beforeDestroy: function () {
        var me = this;

        me.removeUIFromElement();
        me.el.removeCls(me.baseCls);
        Ext.fly(document.body.parentNode).removeCls(me.viewportCls);
        me.callParent();
    }

});
