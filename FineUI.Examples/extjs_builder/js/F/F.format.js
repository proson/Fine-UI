
(function () {

    var ExtF = Ext.util.Format;

    F.format = {

        capitalize: ExtF.capitalize,

        date: ExtF.dateRenderer,

        ellipsis: function (length) {
            return function (value) {
                return ExtF.ellipsis(value, length, false);
            };
        },

        fileSize: ExtF.fileSize,

        htmlEncode: ExtF.htmlEncode,

        htmlDecode: ExtF.htmlDecode,

        lowercase: ExtF.lowercase,

        uppercase: ExtF.uppercase,

        nl2br: ExtF.nl2br,

        number: ExtF.numberRenderer,

        stripScripts: ExtF.stripScripts,

        stripTags: ExtF.stripTags,

        trim: ExtF.trim,

        usMoney: ExtF.usMoney



    };


})();