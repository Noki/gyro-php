<?php
/**
 * @defgroup JQuery
 * @ingroup JavaScript
 * 
 * Include JQuery (http://jquery.com/) on all pages 
 *
 * @section Usage
 *
 * On install, the module copies jquery.js to the a folder named "js" below web root. This file will
 * get included on all pages, if JCSSManager WidgetJCSS is used. It also will be compressed by JCSSManager, 
 * if compression is enabled.
 * 
 * To dissable automatic inclusion of jquery.js set constant APP-JQUERY_ON_EVERY_PAGE to false, and include
 * 'js/jquery.js' manually where approbiate.  
 * 
 * To define the version of JQuery to use, you must specify a version to use by defining
 * the constant APP_JQUERY_VERSION. Available values are "1.3" for JQuery 1.3.2, "1.4" for JQuery 1.4.4,
 * "1.5" for JQuery 1.5.2., "1.6" for 1.6.4 and "1.7" for 1.7.1 The default is "1.7".
 * 
 * @attention The default version policy changed to "newest", so if you do not define a jquery version,
 *            you will automaticalyy get the latest release
 * 
 * @code
 * define('APP_JQUERY_VERSION', '1.4');
 * @endcode
 *
 * @section Notes Additional notes
 *
 * JQuery is released under MIT license.
 */

EventSource::Instance()->register(new JavascriptGoogleChartToolsEventSink());

