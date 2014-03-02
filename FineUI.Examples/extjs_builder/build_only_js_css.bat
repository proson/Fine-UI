

mkdir ..\extjs
mkdir ..\extjs\src
mkdir ..\extjs\lang
mkdir ..\extjs\res
mkdir ..\extjs\res\images
mkdir ..\extjs\res\css
mkdir ..\extjs\res\ext-theme-access
mkdir ..\extjs\res\ext-theme-access\images
mkdir ..\extjs\res\ext-theme-classic
mkdir ..\extjs\res\ext-theme-classic\images
mkdir ..\extjs\res\ext-theme-gray
mkdir ..\extjs\res\ext-theme-gray\images
mkdir ..\extjs\res\ext-theme-neptune
mkdir ..\extjs\res\ext-theme-neptune\images




type res\FineUI.css > _f
type res\PageLoading.css >> _f
type res\Grid.css >> _f
type res\Tree.css >> _f
ajaxminifier\ajaxminifier -css _f -o ..\extjs\res\css\ux.css

type extjs_source_all\resources\ext-theme-access\ext-theme-access-all.css > _f
type ..\extjs\res\css\ux.css >> _f
type res\access.css >> _f
ajaxminifier\ajaxminifier -css _f -o ..\extjs\res\ext-theme-access\all.css

type extjs_source_all\resources\ext-theme-classic\ext-theme-classic-all.css > _f
type ..\extjs\res\css\ux.css >> _f
type res\classic.css >> _f
ajaxminifier\ajaxminifier -css _f -o ..\extjs\res\ext-theme-classic\all.css

type extjs_source_all\resources\ext-theme-gray\ext-theme-gray-all.css > _f
type ..\extjs\res\css\ux.css >> _f
type res\gray.css >> _f
ajaxminifier\ajaxminifier -css _f -o ..\extjs\res\ext-theme-gray\all.css

type extjs_source_all\resources\ext-theme-neptune\ext-theme-neptune-all.css > _f
type ..\extjs\res\css\ux.css >> _f
type res\neptune.css >> _f
ajaxminifier\ajaxminifier -css _f -o ..\extjs\res\ext-theme-neptune\all.css





type extjs_source_all\locale\ext-lang-en.js > _f
type js\lang\f-lang-en.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\en.js

type extjs_source_all\locale\ext-lang-pt_BR.js > _f
type js\lang\f-lang-pt_BR.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\pt_BR.js


type extjs_source_all\locale\ext-lang-tr.js > _f
type js\lang\f-lang-tr.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\tr.js


type extjs_source_all\locale\ext-lang-zh_CN.js > _f
type js\lang\f-lang-zh_CN.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\zh_CN.js


type extjs_source_all\locale\ext-lang-zh_TW.js > _f
type js\lang\f-lang-zh_TW.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\zh_TW.js


type extjs_source_all\locale\ext-lang-ru.js > _f
type js\lang\f-lang-ru.js >> _f
ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\lang\ru.js












type extjs_source_all\ext-all.js > _f

type _f > ..\extjs\ext-part1.js


type js\lib\json2.js > _f
type js\lib\Base64.js >> _f
type js\F\F.util.js >> _f
type js\F\F.ajax.js >> _f
type js\F\F.wnd.js >> _f
type js\F\extender.js >> _f
type js\F\F.simulateTree.js >> _f
type js\F\F.format.js >> _f
type js\ux\FormViewport.js >> _f
type js\ux\SimplePagingToolbar.js >> _f
type js\ux\TabCloseMenu.js >> _f
type extjs_source_all\examples\ux\RowExpander.js >> _f

type _f > ..\extjs\ext-part2.js


type ..\extjs\ext-part1.js > _f
type ..\extjs\ext-part2.js >> _f


ajaxminifier\ajaxminifier -js -evals:immediate  _f -o ..\extjs\ext-all.js


ajaxminifier\ajaxminifier -js -evals:immediate  extjs_source_all\ext-debug.js -o ..\extjs\ext.js

type extjs_source_all\ext-theme-neptune.js > ..\extjs\ext-theme-neptune.js


del _f /Q



