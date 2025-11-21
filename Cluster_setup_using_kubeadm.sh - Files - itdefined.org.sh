<!DOCTYPE html>
<!-- saved from url=(0092)https://materials.itdefined.org/files/Kubernetes/Installation/Cluster_setup_using_kubeadm.sh -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style id="ace-chrome">.ace-chrome .ace_gutter {
  background: #ebebeb;
  color: #333;
  overflow : hidden;
}

.ace-chrome .ace_print-margin {
  width: 1px;
  background: #e8e8e8;
}

.ace-chrome {
  background-color: #FFFFFF;
  color: black;
}

.ace-chrome .ace_cursor {
  color: black;
}

.ace-chrome .ace_invisible {
  color: rgb(191, 191, 191);
}

.ace-chrome .ace_constant.ace_buildin {
  color: rgb(88, 72, 246);
}

.ace-chrome .ace_constant.ace_language {
  color: rgb(88, 92, 246);
}

.ace-chrome .ace_constant.ace_library {
  color: rgb(6, 150, 14);
}

.ace-chrome .ace_invalid {
  background-color: rgb(153, 0, 0);
  color: white;
}

.ace-chrome .ace_fold {
}

.ace-chrome .ace_support.ace_function {
  color: rgb(60, 76, 114);
}

.ace-chrome .ace_support.ace_constant {
  color: rgb(6, 150, 14);
}

.ace-chrome .ace_support.ace_type,
.ace-chrome .ace_support.ace_class
.ace-chrome .ace_support.ace_other {
  color: rgb(109, 121, 222);
}

.ace-chrome .ace_variable.ace_parameter {
  font-style:italic;
  color:#FD971F;
}
.ace-chrome .ace_keyword.ace_operator {
  color: rgb(104, 118, 135);
}

.ace-chrome .ace_comment {
  color: #236e24;
}

.ace-chrome .ace_comment.ace_doc {
  color: #236e24;
}

.ace-chrome .ace_comment.ace_doc.ace_tag {
  color: #236e24;
}

.ace-chrome .ace_constant.ace_numeric {
  color: rgb(0, 0, 205);
}

.ace-chrome .ace_variable {
  color: rgb(49, 132, 149);
}

.ace-chrome .ace_xml-pe {
  color: rgb(104, 104, 91);
}

.ace-chrome .ace_entity.ace_name.ace_function {
  color: #0000A2;
}


.ace-chrome .ace_heading {
  color: rgb(12, 7, 255);
}

.ace-chrome .ace_list {
  color:rgb(185, 6, 144);
}

.ace-chrome .ace_marker-layer .ace_selection {
  background: rgb(181, 213, 255);
}

.ace-chrome .ace_marker-layer .ace_step {
  background: rgb(252, 255, 0);
}

.ace-chrome .ace_marker-layer .ace_stack {
  background: rgb(164, 229, 101);
}

.ace-chrome .ace_marker-layer .ace_bracket {
  margin: -1px 0 0 -1px;
  border: 1px solid rgb(192, 192, 192);
}

.ace-chrome .ace_marker-layer .ace_active-line {
  background: rgba(0, 0, 0, 0.07);
}

.ace-chrome .ace_gutter-active-line {
    background-color : #dcdcdc;
}

.ace-chrome .ace_marker-layer .ace_selected-word {
  background: rgb(250, 250, 255);
  border: 1px solid rgb(200, 200, 250);
}

.ace-chrome .ace_storage,
.ace-chrome .ace_keyword,
.ace-chrome .ace_meta.ace_tag {
  color: rgb(147, 15, 128);
}

.ace-chrome .ace_string.ace_regex {
  color: rgb(255, 0, 0)
}

.ace-chrome .ace_string {
  color: #1A1AA6;
}

.ace-chrome .ace_entity.ace_other.ace_attribute-name {
  color: #994409;
}

.ace-chrome .ace_indent-guide {
  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAE0lEQVQImWP4////f4bLly//BwAmVgd1/w11/gAAAABJRU5ErkJggg==") right repeat-y;
}
  
.ace-chrome .ace_indent-guide-active {
  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAAZSURBVHjaYvj///9/hivKyv8BAAAA//8DACLqBhbvk+/eAAAAAElFTkSuQmCC") right repeat-y;
}

/*# sourceURL=ace/css/ace-chrome */</style><style id="error_marker.css">
    .error_widget_wrapper {
        background: inherit;
        color: inherit;
        border:none
    }
    .error_widget {
        border-top: solid 2px;
        border-bottom: solid 2px;
        margin: 5px 0;
        padding: 10px 40px;
        white-space: pre-wrap;
    }
    .error_widget.ace_error, .error_widget_arrow.ace_error{
        border-color: #ff5a5a
    }
    .error_widget.ace_warning, .error_widget_arrow.ace_warning{
        border-color: #F1D817
    }
    .error_widget.ace_info, .error_widget_arrow.ace_info{
        border-color: #5a5a5a
    }
    .error_widget.ace_ok, .error_widget_arrow.ace_ok{
        border-color: #5aaa5a
    }
    .error_widget_arrow {
        position: absolute;
        border: solid 5px;
        border-top-color: transparent!important;
        border-right-color: transparent!important;
        border-left-color: transparent!important;
        top: -5px;
    }

/*# sourceURL=ace/css/error_marker.css */</style><style id="ace-tm">.ace-tm .ace_gutter {
  background: #f0f0f0;
  color: #333;
}

.ace-tm .ace_print-margin {
  width: 1px;
  background: #e8e8e8;
}

.ace-tm .ace_fold {
    background-color: #6B72E6;
}

.ace-tm {
  background-color: #FFFFFF;
  color: black;
}

.ace-tm .ace_cursor {
  color: black;
}
        
.ace-tm .ace_invisible {
  color: rgb(191, 191, 191);
}

.ace-tm .ace_storage,
.ace-tm .ace_keyword {
  color: blue;
}

.ace-tm .ace_constant {
  color: rgb(197, 6, 11);
}

.ace-tm .ace_constant.ace_buildin {
  color: rgb(88, 72, 246);
}

.ace-tm .ace_constant.ace_language {
  color: rgb(88, 92, 246);
}

.ace-tm .ace_constant.ace_library {
  color: rgb(6, 150, 14);
}

.ace-tm .ace_invalid {
  background-color: rgba(255, 0, 0, 0.1);
  color: red;
}

.ace-tm .ace_support.ace_function {
  color: rgb(60, 76, 114);
}

.ace-tm .ace_support.ace_constant {
  color: rgb(6, 150, 14);
}

.ace-tm .ace_support.ace_type,
.ace-tm .ace_support.ace_class {
  color: rgb(109, 121, 222);
}

.ace-tm .ace_keyword.ace_operator {
  color: rgb(104, 118, 135);
}

.ace-tm .ace_string {
  color: rgb(3, 106, 7);
}

.ace-tm .ace_comment {
  color: rgb(76, 136, 107);
}

.ace-tm .ace_comment.ace_doc {
  color: rgb(0, 102, 255);
}

.ace-tm .ace_comment.ace_doc.ace_tag {
  color: rgb(128, 159, 191);
}

.ace-tm .ace_constant.ace_numeric {
  color: rgb(0, 0, 205);
}

.ace-tm .ace_variable {
  color: rgb(49, 132, 149);
}

.ace-tm .ace_xml-pe {
  color: rgb(104, 104, 91);
}

.ace-tm .ace_entity.ace_name.ace_function {
  color: #0000A2;
}


.ace-tm .ace_heading {
  color: rgb(12, 7, 255);
}

.ace-tm .ace_list {
  color:rgb(185, 6, 144);
}

.ace-tm .ace_meta.ace_tag {
  color:rgb(0, 22, 142);
}

.ace-tm .ace_string.ace_regex {
  color: rgb(255, 0, 0)
}

.ace-tm .ace_marker-layer .ace_selection {
  background: rgb(181, 213, 255);
}
.ace-tm.ace_multiselect .ace_selection.ace_start {
  box-shadow: 0 0 3px 0px white;
}
.ace-tm .ace_marker-layer .ace_step {
  background: rgb(252, 255, 0);
}

.ace-tm .ace_marker-layer .ace_stack {
  background: rgb(164, 229, 101);
}

.ace-tm .ace_marker-layer .ace_bracket {
  margin: -1px 0 0 -1px;
  border: 1px solid rgb(192, 192, 192);
}

.ace-tm .ace_marker-layer .ace_active-line {
  background: rgba(0, 0, 0, 0.07);
}

.ace-tm .ace_gutter-active-line {
    background-color : #dcdcdc;
}

.ace-tm .ace_marker-layer .ace_selected-word {
  background: rgb(250, 250, 255);
  border: 1px solid rgb(200, 200, 250);
}

.ace-tm .ace_indent-guide {
  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAAE0lEQVQImWP4////f4bLly//BwAmVgd1/w11/gAAAABJRU5ErkJggg==") right repeat-y;
}

.ace-tm .ace_indent-guide-active {
  background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAYAAACZgbYnAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAAZSURBVHjaYvj///9/hivKyv8BAAAA//8DACLqBhbvk+/eAAAAAElFTkSuQmCC") right repeat-y;
}

/*# sourceURL=ace/css/ace-tm */</style><style id="ace_editor.css">
.ace_br1 {border-top-left-radius    : 3px;}
.ace_br2 {border-top-right-radius   : 3px;}
.ace_br3 {border-top-left-radius    : 3px; border-top-right-radius:    3px;}
.ace_br4 {border-bottom-right-radius: 3px;}
.ace_br5 {border-top-left-radius    : 3px; border-bottom-right-radius: 3px;}
.ace_br6 {border-top-right-radius   : 3px; border-bottom-right-radius: 3px;}
.ace_br7 {border-top-left-radius    : 3px; border-top-right-radius:    3px; border-bottom-right-radius: 3px;}
.ace_br8 {border-bottom-left-radius : 3px;}
.ace_br9 {border-top-left-radius    : 3px; border-bottom-left-radius:  3px;}
.ace_br10{border-top-right-radius   : 3px; border-bottom-left-radius:  3px;}
.ace_br11{border-top-left-radius    : 3px; border-top-right-radius:    3px; border-bottom-left-radius:  3px;}
.ace_br12{border-bottom-right-radius: 3px; border-bottom-left-radius:  3px;}
.ace_br13{border-top-left-radius    : 3px; border-bottom-right-radius: 3px; border-bottom-left-radius:  3px;}
.ace_br14{border-top-right-radius   : 3px; border-bottom-right-radius: 3px; border-bottom-left-radius:  3px;}
.ace_br15{border-top-left-radius    : 3px; border-top-right-radius:    3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;}


.ace_editor {
    position: relative;
    overflow: hidden;
    padding: 0;
    font: 12px/normal 'Monaco', 'Menlo', 'Ubuntu Mono', 'Consolas', 'Source Code Pro', 'source-code-pro', monospace;
    direction: ltr;
    text-align: left;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.ace_scroller {
    position: absolute;
    overflow: hidden;
    top: 0;
    bottom: 0;
    background-color: inherit;
    -ms-user-select: none;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: text;
}

.ace_content {
    position: absolute;
    box-sizing: border-box;
    min-width: 100%;
    contain: style size layout;
    font-variant-ligatures: no-common-ligatures;
}

.ace_keyboard-focus:focus {
    box-shadow: inset 0 0 0 2px #5E9ED6;
    outline: none;
}

.ace_dragging .ace_scroller:before{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    content: '';
    background: rgba(250, 250, 250, 0.01);
    z-index: 1000;
}
.ace_dragging.ace_dark .ace_scroller:before{
    background: rgba(0, 0, 0, 0.01);
}

.ace_gutter {
    position: absolute;
    overflow : hidden;
    width: auto;
    top: 0;
    bottom: 0;
    left: 0;
    cursor: default;
    z-index: 4;
    -ms-user-select: none;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    contain: style size layout;
}

.ace_gutter-active-line {
    position: absolute;
    left: 0;
    right: 0;
}

.ace_scroller.ace_scroll-left:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    box-shadow: 17px 0 16px -16px rgba(0, 0, 0, 0.4) inset;
    pointer-events: none;
}

.ace_gutter-cell, .ace_gutter-cell_svg-icons {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    padding-left: 19px;
    padding-right: 6px;
    background-repeat: no-repeat;
}

.ace_gutter-cell_svg-icons .ace_gutter_annotation {
    margin-left: -14px;
    float: left;
}

.ace_gutter-cell .ace_gutter_annotation {
    margin-left: -19px;
    float: left;
}

.ace_gutter-cell.ace_error, .ace_icon.ace_error, .ace_icon.ace_error_fold {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAABOFBMVEX/////////QRswFAb/Ui4wFAYwFAYwFAaWGAfDRymzOSH/PxswFAb/SiUwFAYwFAbUPRvjQiDllog5HhHdRybsTi3/Tyv9Tir+Syj/UC3////XurebMBIwFAb/RSHbPx/gUzfdwL3kzMivKBAwFAbbvbnhPx66NhowFAYwFAaZJg8wFAaxKBDZurf/RB6mMxb/SCMwFAYwFAbxQB3+RB4wFAb/Qhy4Oh+4QifbNRcwFAYwFAYwFAb/QRzdNhgwFAYwFAbav7v/Uy7oaE68MBK5LxLewr/r2NXewLswFAaxJw4wFAbkPRy2PyYwFAaxKhLm1tMwFAazPiQwFAaUGAb/QBrfOx3bvrv/VC/maE4wFAbRPBq6MRO8Qynew8Dp2tjfwb0wFAbx6eju5+by6uns4uH9/f36+vr/GkHjAAAAYnRSTlMAGt+64rnWu/bo8eAA4InH3+DwoN7j4eLi4xP99Nfg4+b+/u9B/eDs1MD1mO7+4PHg2MXa347g7vDizMLN4eG+Pv7i5evs/v79yu7S3/DV7/498Yv24eH+4ufQ3Ozu/v7+y13sRqwAAADLSURBVHjaZc/XDsFgGIBhtDrshlitmk2IrbHFqL2pvXf/+78DPokj7+Fz9qpU/9UXJIlhmPaTaQ6QPaz0mm+5gwkgovcV6GZzd5JtCQwgsxoHOvJO15kleRLAnMgHFIESUEPmawB9ngmelTtipwwfASilxOLyiV5UVUyVAfbG0cCPHig+GBkzAENHS0AstVF6bacZIOzgLmxsHbt2OecNgJC83JERmePUYq8ARGkJx6XtFsdddBQgZE2nPR6CICZhawjA4Fb/chv+399kfR+MMMDGOQAAAABJRU5ErkJggg==");
    background-repeat: no-repeat;
    background-position: 2px center;
}

.ace_gutter-cell.ace_warning, .ace_icon.ace_warning, .ace_icon.ace_warning_fold {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAmVBMVEX///8AAAD///8AAAAAAABPSzb/5sAAAAB/blH/73z/ulkAAAAAAAD85pkAAAAAAAACAgP/vGz/rkDerGbGrV7/pkQICAf////e0IsAAAD/oED/qTvhrnUAAAD/yHD/njcAAADuv2r/nz//oTj/p064oGf/zHAAAAA9Nir/tFIAAAD/tlTiuWf/tkIAAACynXEAAAAAAAAtIRW7zBpBAAAAM3RSTlMAABR1m7RXO8Ln31Z36zT+neXe5OzooRDfn+TZ4p3h2hTf4t3k3ucyrN1K5+Xaks52Sfs9CXgrAAAAjklEQVR42o3PbQ+CIBQFYEwboPhSYgoYunIqqLn6/z8uYdH8Vmdnu9vz4WwXgN/xTPRD2+sgOcZjsge/whXZgUaYYvT8QnuJaUrjrHUQreGczuEafQCO/SJTufTbroWsPgsllVhq3wJEk2jUSzX3CUEDJC84707djRc5MTAQxoLgupWRwW6UB5fS++NV8AbOZgnsC7BpEAAAAABJRU5ErkJggg==");
    background-repeat: no-repeat;
    background-position: 2px center;
}

.ace_gutter-cell.ace_info, .ace_icon.ace_info {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAAAAAA6mKC9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAJ0Uk5TAAB2k804AAAAPklEQVQY02NgIB68QuO3tiLznjAwpKTgNyDbMegwisCHZUETUZV0ZqOquBpXj2rtnpSJT1AEnnRmL2OgGgAAIKkRQap2htgAAAAASUVORK5CYII=");
    background-repeat: no-repeat;
    background-position: 2px center;
}
.ace_dark .ace_gutter-cell.ace_info, .ace_dark .ace_icon.ace_info {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQBAMAAADt3eJSAAAAJFBMVEUAAAChoaGAgIAqKiq+vr6tra1ZWVmUlJSbm5s8PDxubm56enrdgzg3AAAAAXRSTlMAQObYZgAAAClJREFUeNpjYMAPdsMYHegyJZFQBlsUlMFVCWUYKkAZMxZAGdxlDMQBAG+TBP4B6RyJAAAAAElFTkSuQmCC");
}

.ace_icon_svg.ace_error {
    -webkit-mask-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAxNiI+CjxnIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlPSJyZWQiIHNoYXBlLXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIj4KPGNpcmNsZSBmaWxsPSJub25lIiBjeD0iOCIgY3k9IjgiIHI9IjciIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPGxpbmUgeDE9IjExIiB5MT0iNSIgeDI9IjUiIHkyPSIxMSIvPgo8bGluZSB4MT0iMTEiIHkxPSIxMSIgeDI9IjUiIHkyPSI1Ii8+CjwvZz4KPC9zdmc+");
    background-color: crimson;
}
.ace_icon_svg.ace_warning {
    -webkit-mask-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAxNiI+CjxnIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlPSJkYXJrb3JhbmdlIiBzaGFwZS1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiI+Cjxwb2x5Z29uIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGZpbGw9Im5vbmUiIHBvaW50cz0iOCAxIDE1IDE1IDEgMTUgOCAxIi8+CjxyZWN0IHg9IjgiIHk9IjEyIiB3aWR0aD0iMC4wMSIgaGVpZ2h0PSIwLjAxIi8+CjxsaW5lIHgxPSI4IiB5MT0iNiIgeDI9IjgiIHkyPSIxMCIvPgo8L2c+Cjwvc3ZnPg==");
    background-color: darkorange;
}
.ace_icon_svg.ace_info {
    -webkit-mask-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAxNiI+CjxnIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlPSJibHVlIiBzaGFwZS1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiI+CjxjaXJjbGUgZmlsbD0ibm9uZSIgY3g9IjgiIGN5PSI4IiByPSI3IiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjxwb2x5bGluZSBwb2ludHM9IjggMTEgOCA4Ii8+Cjxwb2x5bGluZSBwb2ludHM9IjkgOCA2IDgiLz4KPGxpbmUgeDE9IjEwIiB5MT0iMTEiIHgyPSI2IiB5Mj0iMTEiLz4KPHJlY3QgeD0iOCIgeT0iNSIgd2lkdGg9IjAuMDEiIGhlaWdodD0iMC4wMSIvPgo8L2c+Cjwvc3ZnPg==");
    background-color: royalblue;
}

.ace_icon_svg.ace_error_fold {
    -webkit-mask-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAxNiIgZmlsbD0ibm9uZSI+CiAgPHBhdGggZD0ibSAxOC45Mjk4NTEsNy44Mjk4MDc2IGMgMC4xNDYzNTMsNi4zMzc0NjA0IC02LjMyMzE0Nyw3Ljc3Nzg0NDQgLTcuNDc3OTEyLDcuNzc3ODQ0NCAtMi4xMDcyNzI2LC0wLjEyODc1IDUuMTE3Njc4LDAuMzU2MjQ5IDUuMDUxNjk4LC03Ljg3MDA2MTggLTAuNjA0NjcyLC04LjAwMzk3MzQ5IC03LjA3NzI3MDYsLTcuNTYzMTE4OSAtNC44NTczLC03LjQzMDM5NTU2IDEuNjA2LC0wLjExNTE0MjI1IDYuODk3NDg1LDEuMjYyNTQ1OTYgNy4yODM1MTQsNy41MjI2MTI5NiB6IiBmaWxsPSJjcmltc29uIiBzdHJva2Utd2lkdGg9IjIiLz4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0ibSA4LjExNDc1NjIsMi4wNTI5ODI4IGMgMy4zNDkxNjk4LDAgNi4wNjQxMzI4LDIuNjc2ODYyNyA2LjA2NDEzMjgsNS45Nzg5NTMgMCwzLjMwMjExMjIgLTIuNzE0OTYzLDUuOTc4OTIwMiAtNi4wNjQxMzI4LDUuOTc4OTIwMiAtMy4zNDkxNDczLDAgLTYuMDY0MTc3MiwtMi42NzY4MDggLTYuMDY0MTc3MiwtNS45Nzg5MjAyIDAuMDA1MzksLTMuMjk5ODg2MSAyLjcxNzI2NTYsLTUuOTczNjQwOCA2LjA2NDE3NzIsLTUuOTc4OTUzIHogbSAwLC0xLjczNTgyNzE5IGMgLTQuMzIxNDgzNiwwIC03LjgyNDc0MDM4LDMuNDU0MDE4NDkgLTcuODI0NzQwMzgsNy43MTQ3ODAxOSAwLDQuMjYwNzI4MiAzLjUwMzI1Njc4LDcuNzE0NzQ1MiA3LjgyNDc0MDM4LDcuNzE0NzQ1MiA0LjMyMTQ0OTgsMCA3LjgyNDY5OTgsLTMuNDU0MDE3IDcuODI0Njk5OCwtNy43MTQ3NDUyIDAsLTIuMDQ2MDkxNCAtMC44MjQzOTIsLTQuMDA4MzY3MiAtMi4yOTE3NTYsLTUuNDU1MTc0NiBDIDEyLjE4MDIyNSwxLjEyOTk2NDggMTAuMTkwMDEzLDAuMzE3MTU1NjEgOC4xMTQ3NTYyLDAuMzE3MTU1NjEgWiBNIDYuOTM3NDU2Myw4LjI0MDU5ODUgNC42NzE4Njg1LDEwLjQ4NTg1MiA2LjAwODY4MTQsMTEuODc2NzI4IDguMzE3MDAzNSw5LjYwMDc5MTEgMTAuNjI1MzM3LDExLjg3NjcyOCAxMS45NjIxMzgsMTAuNDg1ODUyIDkuNjk2NTUwOCw4LjI0MDU5ODUgMTEuOTYyMTM4LDYuMDA2ODA2NiAxMC41NzMyNDYsNC42Mzc0MzM1IDguMzE3MDAzNSw2Ljg3MzQyOTcgNi4wNjA3NjA3LDQuNjM3NDMzNSA0LjY3MTg2ODUsNi4wMDY4MDY2IFoiIGZpbGw9ImNyaW1zb24iIHN0cm9rZS13aWR0aD0iMiIvPgo8L3N2Zz4=");
    background-color: crimson;
}
.ace_icon_svg.ace_warning_fold {
    -webkit-mask-image: url("data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAyMCAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNC43NzY5IDE0LjczMzdMOC42NTE5MiAyLjQ4MzY5QzguMzI5NDYgMS44Mzg3NyA3LjQwOTEzIDEuODM4NzcgNy4wODY2NyAyLjQ4MzY5TDAuOTYxNjY5IDE0LjczMzdDMC42NzA3NzUgMTUuMzE1NSAxLjA5MzgzIDE2IDEuNzQ0MjkgMTZIMTMuOTk0M0MxNC42NDQ4IDE2IDE1LjA2NzggMTUuMzE1NSAxNC43NzY5IDE0LjczMzdaTTMuMTYwMDcgMTQuMjVMNy44NjkyOSA0LjgzMTU2TDEyLjU3ODUgMTQuMjVIMy4xNjAwN1pNOC43NDQyOSAxMS42MjVWMTMuMzc1SDYuOTk0MjlWMTEuNjI1SDguNzQ0MjlaTTYuOTk0MjkgMTAuNzVWNy4yNUg4Ljc0NDI5VjEwLjc1SDYuOTk0MjlaIiBmaWxsPSIjRUM3MjExIi8+CjxwYXRoIGQ9Ik0xMS4xOTkxIDIuOTUyMzhDMTAuODgwOSAyLjMxNDY3IDEwLjM1MzcgMS44MDUyNiA5LjcwNTUgMS41MDlMMTEuMDQxIDEuMDY5NzhDMTEuNjg4MyAwLjk0OTgxNCAxMi4zMzcgMS4yNzI2MyAxMi42MzE3IDEuODYxNDFMMTcuNjEzNiAxMS44MTYxQzE4LjM1MjcgMTMuMjkyOSAxNy41OTM4IDE1LjA4MDQgMTYuMDE4IDE1LjU3NDVDMTYuNDA0NCAxNC40NTA3IDE2LjMyMzEgMTMuMjE4OCAxNS43OTI0IDEyLjE1NTVMMTEuMTk5MSAyLjk1MjM4WiIgZmlsbD0iI0VDNzIxMSIvPgo8L3N2Zz4=");
    background-color: darkorange;
}

.ace_scrollbar {
    contain: strict;
    position: absolute;
    right: 0;
    bottom: 0;
    z-index: 6;
}

.ace_scrollbar-inner {
    position: absolute;
    cursor: text;
    left: 0;
    top: 0;
}

.ace_scrollbar-v{
    overflow-x: hidden;
    overflow-y: scroll;
    top: 0;
}

.ace_scrollbar-h {
    overflow-x: scroll;
    overflow-y: hidden;
    left: 0;
}

.ace_print-margin {
    position: absolute;
    height: 100%;
}

.ace_text-input {
    position: absolute;
    z-index: 0;
    width: 0.5em;
    height: 1em;
    opacity: 0;
    background: transparent;
    -moz-appearance: none;
    appearance: none;
    border: none;
    resize: none;
    outline: none;
    overflow: hidden;
    font: inherit;
    padding: 0 1px;
    margin: 0 -1px;
    contain: strict;
    -ms-user-select: text;
    -moz-user-select: text;
    -webkit-user-select: text;
    user-select: text;
    /*with `pre-line` chrome inserts &nbsp; instead of space*/
    white-space: pre!important;
}
.ace_text-input.ace_composition {
    background: transparent;
    color: inherit;
    z-index: 1000;
    opacity: 1;
}
.ace_composition_placeholder { color: transparent }
.ace_composition_marker { 
    border-bottom: 1px solid;
    position: absolute;
    border-radius: 0;
    margin-top: 1px;
}

[ace_nocontext=true] {
    transform: none!important;
    filter: none!important;
    clip-path: none!important;
    mask : none!important;
    contain: none!important;
    perspective: none!important;
    mix-blend-mode: initial!important;
    z-index: auto;
}

.ace_layer {
    z-index: 1;
    position: absolute;
    overflow: hidden;
    /* workaround for chrome bug https://github.com/ajaxorg/ace/issues/2312*/
    word-wrap: normal;
    white-space: pre;
    height: 100%;
    width: 100%;
    box-sizing: border-box;
    /* setting pointer-events: auto; on node under the mouse, which changes
        during scroll, will break mouse wheel scrolling in Safari */
    pointer-events: none;
}

.ace_gutter-layer {
    position: relative;
    width: auto;
    text-align: right;
    pointer-events: auto;
    height: 1000000px;
    contain: style size layout;
}

.ace_text-layer {
    font: inherit !important;
    position: absolute;
    height: 1000000px;
    width: 1000000px;
    contain: style size layout;
}

.ace_text-layer > .ace_line, .ace_text-layer > .ace_line_group {
    contain: style size layout;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
}

.ace_hidpi .ace_text-layer,
.ace_hidpi .ace_gutter-layer,
.ace_hidpi .ace_content,
.ace_hidpi .ace_gutter {
    contain: strict;
}
.ace_hidpi .ace_text-layer > .ace_line, 
.ace_hidpi .ace_text-layer > .ace_line_group {
    contain: strict;
}

.ace_cjk {
    display: inline-block;
    text-align: center;
}

.ace_cursor-layer {
    z-index: 4;
}

.ace_cursor {
    z-index: 4;
    position: absolute;
    box-sizing: border-box;
    border-left: 2px solid;
    /* workaround for smooth cursor repaintng whole screen in chrome */
    transform: translatez(0);
}

.ace_multiselect .ace_cursor {
    border-left-width: 1px;
}

.ace_slim-cursors .ace_cursor {
    border-left-width: 1px;
}

.ace_overwrite-cursors .ace_cursor {
    border-left-width: 0;
    border-bottom: 1px solid;
}

.ace_hidden-cursors .ace_cursor {
    opacity: 0.2;
}

.ace_hasPlaceholder .ace_hidden-cursors .ace_cursor {
    opacity: 0;
}

.ace_smooth-blinking .ace_cursor {
    transition: opacity 0.18s;
}

.ace_animate-blinking .ace_cursor {
    animation-duration: 1000ms;
    animation-timing-function: step-end;
    animation-name: blink-ace-animate;
    animation-iteration-count: infinite;
}

.ace_animate-blinking.ace_smooth-blinking .ace_cursor {
    animation-duration: 1000ms;
    animation-timing-function: ease-in-out;
    animation-name: blink-ace-animate-smooth;
}
    
@keyframes blink-ace-animate {
    from, to { opacity: 1; }
    60% { opacity: 0; }
}

@keyframes blink-ace-animate-smooth {
    from, to { opacity: 1; }
    45% { opacity: 1; }
    60% { opacity: 0; }
    85% { opacity: 0; }
}

.ace_marker-layer .ace_step, .ace_marker-layer .ace_stack {
    position: absolute;
    z-index: 3;
}

.ace_marker-layer .ace_selection {
    position: absolute;
    z-index: 5;
}

.ace_marker-layer .ace_bracket {
    position: absolute;
    z-index: 6;
}

.ace_marker-layer .ace_error_bracket {
    position: absolute;
    border-bottom: 1px solid #DE5555;
    border-radius: 0;
}

.ace_marker-layer .ace_active-line {
    position: absolute;
    z-index: 2;
}

.ace_marker-layer .ace_selected-word {
    position: absolute;
    z-index: 4;
    box-sizing: border-box;
}

.ace_line .ace_fold {
    box-sizing: border-box;

    display: inline-block;
    height: 11px;
    margin-top: -2px;
    vertical-align: middle;

    background-image:
        url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAJCAYAAADU6McMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJpJREFUeNpi/P//PwOlgAXGYGRklAVSokD8GmjwY1wasKljQpYACtpCFeADcHVQfQyMQAwzwAZI3wJKvCLkfKBaMSClBlR7BOQikCFGQEErIH0VqkabiGCAqwUadAzZJRxQr/0gwiXIal8zQQPnNVTgJ1TdawL0T5gBIP1MUJNhBv2HKoQHHjqNrA4WO4zY0glyNKLT2KIfIMAAQsdgGiXvgnYAAAAASUVORK5CYII="),
        url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAA3CAYAAADNNiA5AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACJJREFUeNpi+P//fxgTAwPDBxDxD078RSX+YeEyDFMCIMAAI3INmXiwf2YAAAAASUVORK5CYII=");
    background-repeat: no-repeat, repeat-x;
    background-position: center center, top left;
    color: transparent;

    border: 1px solid black;
    border-radius: 2px;

    cursor: pointer;
    pointer-events: auto;
}

.ace_dark .ace_fold {
}

.ace_fold:hover{
    background-image:
        url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAJCAYAAADU6McMAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJpJREFUeNpi/P//PwOlgAXGYGRklAVSokD8GmjwY1wasKljQpYACtpCFeADcHVQfQyMQAwzwAZI3wJKvCLkfKBaMSClBlR7BOQikCFGQEErIH0VqkabiGCAqwUadAzZJRxQr/0gwiXIal8zQQPnNVTgJ1TdawL0T5gBIP1MUJNhBv2HKoQHHjqNrA4WO4zY0glyNKLT2KIfIMAAQsdgGiXvgnYAAAAASUVORK5CYII="),
        url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAA3CAYAAADNNiA5AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAACBJREFUeNpi+P//fz4TAwPDZxDxD5X4i5fLMEwJgAADAEPVDbjNw87ZAAAAAElFTkSuQmCC");
}

.ace_tooltip {
    background-color: #f5f5f5;
    border: 1px solid gray;
    border-radius: 1px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);
    color: black;
    max-width: 100%;
    padding: 3px 4px;
    position: fixed;
    z-index: 999999;
    box-sizing: border-box;
    cursor: default;
    white-space: pre;
    word-wrap: break-word;
    line-height: normal;
    font-style: normal;
    font-weight: normal;
    letter-spacing: normal;
    pointer-events: none;
}

.ace_tooltip.ace_dark {
    background-color: #636363;
    color: #fff;
}

.ace_tooltip:focus {
    outline: 1px solid #5E9ED6;
}

.ace_icon {
    display: inline-block;
    width: 18px;
    vertical-align: top;
}

.ace_icon_svg {
    display: inline-block;
    width: 12px;
    vertical-align: top;
    -webkit-mask-repeat: no-repeat;
    -webkit-mask-size: 12px;
    -webkit-mask-position: center;
}

.ace_folding-enabled > .ace_gutter-cell, .ace_folding-enabled > .ace_gutter-cell_svg-icons {
    padding-right: 13px;
}

.ace_fold-widget {
    box-sizing: border-box;

    margin: 0 -12px 0 1px;
    display: none;
    width: 11px;
    vertical-align: top;

    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAANElEQVR42mWKsQ0AMAzC8ixLlrzQjzmBiEjp0A6WwBCSPgKAXoLkqSot7nN3yMwR7pZ32NzpKkVoDBUxKAAAAABJRU5ErkJggg==");
    background-repeat: no-repeat;
    background-position: center;

    border-radius: 3px;
    
    border: 1px solid transparent;
    cursor: pointer;
}

.ace_folding-enabled .ace_fold-widget {
    display: inline-block;   
}

.ace_fold-widget.ace_end {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAANElEQVR42m3HwQkAMAhD0YzsRchFKI7sAikeWkrxwScEB0nh5e7KTPWimZki4tYfVbX+MNl4pyZXejUO1QAAAABJRU5ErkJggg==");
}

.ace_fold-widget.ace_closed {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAAGCAYAAAAG5SQMAAAAOUlEQVR42jXKwQkAMAgDwKwqKD4EwQ26sSOkVWjgIIHAzPiCgaqiqnJHZnKICBERHN194O5b9vbLuAVRL+l0YWnZAAAAAElFTkSuQmCCXA==");
}

.ace_fold-widget:hover {
    border: 1px solid rgba(0, 0, 0, 0.3);
    background-color: rgba(255, 255, 255, 0.2);
    box-shadow: 0 1px 1px rgba(255, 255, 255, 0.7);
}

.ace_fold-widget:active {
    border: 1px solid rgba(0, 0, 0, 0.4);
    background-color: rgba(0, 0, 0, 0.05);
    box-shadow: 0 1px 1px rgba(255, 255, 255, 0.8);
}
/**
 * Dark version for fold widgets
 */
.ace_dark .ace_fold-widget {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHklEQVQIW2P4//8/AzoGEQ7oGCaLLAhWiSwB146BAQCSTPYocqT0AAAAAElFTkSuQmCC");
}
.ace_dark .ace_fold-widget.ace_end {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAH0lEQVQIW2P4//8/AxQ7wNjIAjDMgC4AxjCVKBirIAAF0kz2rlhxpAAAAABJRU5ErkJggg==");
}
.ace_dark .ace_fold-widget.ace_closed {
    background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAAFCAYAAACAcVaiAAAAHElEQVQIW2P4//+/AxAzgDADlOOAznHAKgPWAwARji8UIDTfQQAAAABJRU5ErkJggg==");
}
.ace_dark .ace_fold-widget:hover {
    box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
    background-color: rgba(255, 255, 255, 0.1);
}
.ace_dark .ace_fold-widget:active {
    box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);
}

.ace_inline_button {
    border: 1px solid lightgray;
    display: inline-block;
    margin: -1px 8px;
    padding: 0 5px;
    pointer-events: auto;
    cursor: pointer;
}
.ace_inline_button:hover {
    border-color: gray;
    background: rgba(200,200,200,0.2);
    display: inline-block;
    pointer-events: auto;
}

.ace_fold-widget.ace_invalid {
    background-color: #FFB4B4;
    border-color: #DE5555;
}

.ace_fade-fold-widgets .ace_fold-widget {
    transition: opacity 0.4s ease 0.05s;
    opacity: 0;
}

.ace_fade-fold-widgets:hover .ace_fold-widget {
    transition: opacity 0.05s ease 0.05s;
    opacity:1;
}

.ace_underline {
    text-decoration: underline;
}

.ace_bold {
    font-weight: bold;
}

.ace_nobold .ace_bold {
    font-weight: normal;
}

.ace_italic {
    font-style: italic;
}


.ace_error-marker {
    background-color: rgba(255, 0, 0,0.2);
    position: absolute;
    z-index: 9;
}

.ace_highlight-marker {
    background-color: rgba(255, 255, 0,0.2);
    position: absolute;
    z-index: 8;
}

.ace_mobile-menu {
    position: absolute;
    line-height: 1.5;
    border-radius: 4px;
    -ms-user-select: none;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    background: white;
    box-shadow: 1px 3px 2px grey;
    border: 1px solid #dcdcdc;
    color: black;
}
.ace_dark > .ace_mobile-menu {
    background: #333;
    color: #ccc;
    box-shadow: 1px 3px 2px grey;
    border: 1px solid #444;

}
.ace_mobile-button {
    padding: 2px;
    cursor: pointer;
    overflow: hidden;
}
.ace_mobile-button:hover {
    background-color: #eee;
    opacity:1;
}
.ace_mobile-button:active {
    background-color: #ddd;
}

.ace_placeholder {
    font-family: arial;
    transform: scale(0.9);
    transform-origin: left;
    white-space: pre;
    opacity: 0.7;
    margin: 0 10px;
}

.ace_ghost_text {
    opacity: 0.5;
    font-style: italic;
    white-space: pre;
}
/*# sourceURL=ace/css/ace_editor.css */</style><style id="ace_scrollbar.css">.ace_editor>.ace_sb-v div, .ace_editor>.ace_sb-h div{
  position: absolute;
  background: rgba(128, 128, 128, 0.6);
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  border: 1px solid #bbb;
  border-radius: 2px;
  z-index: 8;
}
.ace_editor>.ace_sb-v, .ace_editor>.ace_sb-h {
  position: absolute;
  z-index: 6;
  background: none;
  overflow: hidden!important;
}
.ace_editor>.ace_sb-v {
  z-index: 6;
  right: 0;
  top: 0;
  width: 12px;
}
.ace_editor>.ace_sb-v div {
  z-index: 8;
  right: 0;
  width: 100%;
}
.ace_editor>.ace_sb-h {
  bottom: 0;
  left: 0;
  height: 12px;
}
.ace_editor>.ace_sb-h div {
  bottom: 0;
  height: 100%;
}
.ace_editor>.ace_sb_grabbed {
  z-index: 8;
  background: #000;
}
/*# sourceURL=ace/css/ace_scrollbar.css */</style>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    

    <title>Cluster_setup_using_kubeadm.sh - Files - itdefined.org</title>

    <link rel="icon" type="image/png" sizes="32x32" href="https://materials.itdefined.org/static/img/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://materials.itdefined.org/static/img/icons/favicon-16x16.png">

    <!-- Add to home screen for Android and modern mobile browsers -->
    <link rel="manifest" id="manifestPlaceholder" crossorigin="use-credentials" href="blob:https://materials.itdefined.org/4a9c554c-af7d-4920-9740-a9fb58d56e2e">
    <meta name="theme-color" content="#2979ff">

    <!-- Add to home screen for Safari on iOS/iPadOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="assets">
    <link rel="apple-touch-icon" href="https://materials.itdefined.org/static/img/icons/apple-touch-icon.png">

    <!-- Add to home screen for Windows -->
    <meta name="msapplication-TileImage" content="/static/img/icons/mstile-144x144.png">
    <meta name="msapplication-TileColor" content="#2979ff">

    <!-- Inject Some Variables and generate the manifest json -->
    <script>
      // We can assign JSON directly
      window.FileBrowser = {"AuthMethod":"json","BaseURL":"","CSS":false,"Color":"","DisableExternal":true,"DisableUsedPercentage":true,"EnableExec":true,"EnableThumbs":true,"LoginPage":true,"Name":"itdefined.org","NoAuth":false,"ReCaptcha":false,"ResizePreview":true,"Signup":false,"StaticURL":"/static","Theme":"","TusSettings":{"chunkSize":10485760,"retryCount":5},"Version":"c21e487"};
      // Global function to prepend static url
      window.__prependStaticUrl = (url) => {
        return `${window.FileBrowser.StaticURL}/${url.replace(/^\/+/, "")}`;
      };
      var dynamicManifest = {
        name: window.FileBrowser.Name || "File Browser",
        short_name: window.FileBrowser.Name || "File Browser",
        icons: [
          {
            src: window.__prependStaticUrl("/img/icons/android-chrome-192x192.png"),
            sizes: "192x192",
            type: "image/png",
          },
          {
            src: window.__prependStaticUrl("/img/icons/android-chrome-512x512.png"),
            sizes: "512x512",
            type: "image/png",
          },
        ],
        start_url: window.location.origin + window.FileBrowser.BaseURL,
        display: "standalone",
        background_color: "#ffffff",
        theme_color: window.FileBrowser.Color || "#455a64",
      };

      const stringManifest = JSON.stringify(dynamicManifest);
      const blob = new Blob([stringManifest], { type: "application/json" });
      const manifestURL = URL.createObjectURL(blob);
      document
        .querySelector("#manifestPlaceholder")
        .setAttribute("href", manifestURL);
    </script>

    <style>
      #loading {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: #fff;
        z-index: 9999;
        transition: 0.1s ease opacity;
        -webkit-transition: 0.1s ease opacity;
      }

      #loading.done {
        opacity: 0;
      }

      #loading .spinner {
        width: 70px;
        text-align: center;
        position: fixed;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
      }

      #loading .spinner > div {
        width: 18px;
        height: 18px;
        background-color: #333;
        border-radius: 100%;
        display: inline-block;
        -webkit-animation: sk-bouncedelay 1.4s infinite ease-in-out both;
        animation: sk-bouncedelay 1.4s infinite ease-in-out both;
      }

      #loading .spinner .bounce1 {
        -webkit-animation-delay: -0.32s;
        animation-delay: -0.32s;
      }

      #loading .spinner .bounce2 {
        -webkit-animation-delay: -0.16s;
        animation-delay: -0.16s;
      }

      @-webkit-keyframes sk-bouncedelay {
        0%,
        80%,
        100% {
          -webkit-transform: scale(0);
        }
        40% {
          -webkit-transform: scale(1);
        }
      }

      @keyframes sk-bouncedelay {
        0%,
        80%,
        100% {
          -webkit-transform: scale(0);
          transform: scale(0);
        }
        40% {
          -webkit-transform: scale(1);
          transform: scale(1);
        }
      }
    </style>
    <script type="module" crossorigin="" src="./Cluster_setup_using_kubeadm.sh - Files - itdefined.org_files/index-0c3fa181.js.download"></script>
    <link rel="stylesheet" href="./Cluster_setup_using_kubeadm.sh - Files - itdefined.org_files/index-a819c624.css">
    <script type="module">import.meta.url;import("_").catch(()=>1);async function* g(){};if(location.protocol!="file:"){window.__vite_is_modern_browser=true}</script>
    <script type="module">!function(){if(window.__vite_is_modern_browser)return;console.warn("vite: loading legacy chunks, syntax error above and the same error below should be ignored");var e=document.getElementById("vite-legacy-polyfill"),n=document.createElement("script");n.src=e.src,n.onload=function(){System.import(document.getElementById('vite-legacy-entry').getAttribute('data-src'))},document.body.appendChild(n)}();</script>
  <script src="./Cluster_setup_using_kubeadm.sh - Files - itdefined.org_files/theme-chrome.js.download"></script><script src="./Cluster_setup_using_kubeadm.sh - Files - itdefined.org_files/mode-sh.js.download"></script></head>
  <body>
    <div><div><!----><nav class=""><button aria-label="My files" title="My files" class="action"><i class="material-icons">folder</i><span>My files</span></button><!----><div><button aria-label="Settings" title="Settings" class="action"><i class="material-icons">settings_applications</i><span>Settings</span></button><button id="logout" aria-label="Logout" title="Logout" class="action"><i class="material-icons">exit_to_app</i><span>Logout</span></button></div><!----><p class="credits"><span><span>File Browser</span><span> c21e487</span></span><span><a>Help</a></span></p></nav><main><div><!----><div class="breadcrumbs"><a href="https://materials.itdefined.org/files" class="router-link-active" aria-label="Home" title="Home"><i class="material-icons">home</i></a><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><a href="https://materials.itdefined.org/files/Kubernetes/" class="router-link-active">Kubernetes</a></span><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><a href="https://materials.itdefined.org/files/Kubernetes/Installation/" class="router-link-active">Installation</a></span><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><a href="https://materials.itdefined.org/files/Kubernetes/Installation/Cluster_setup_using_kubeadm.sh/" aria-current="page" class="router-link-exact-active router-link-active">Cluster_setup_using_kubeadm.sh</a></span></div><div id="editor-container"><header><!----><!----><button aria-label="Close" title="Close" class="action"><i class="material-icons">close</i><span>Close</span><!----></button><title>Cluster_setup_using_kubeadm.sh</title><!----><div id="dropdown" class=""></div><!----><div class="overlay" style="display: none;"></div></header><div class="breadcrumbs"><span to="/files" aria-label="Home" title="Home"><i class="material-icons">home</i></span><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><span to="/files/Kubernetes/">Kubernetes</span></span><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><span to="/files/Kubernetes/Installation/">Installation</span></span><span><span class="chevron"><i class="material-icons">keyboard_arrow_right</i></span><span to="/files/Kubernetes/Installation/Cluster_setup_using_kubeadm.sh/">Cluster_setup_using_kubeadm.sh</span></span></div><form id="editor" class=" ace_editor ace-chrome ace_focus"><textarea class="ace_text-input" wrap="off" autocorrect="off" autocapitalize="off" spellcheck="false" aria-haspopup="false" aria-autocomplete="both" role="textbox" readonly="" style="opacity: 0; font-size: 1px; height: 1px; width: 1px; top: 210px; left: 58px;"></textarea><div class="ace_gutter" aria-hidden="true" style="left: 0px; width: 54px;"><div class="ace_layer ace_gutter-layer ace_folding-enabled" style="height: 1e+06px; top: 0px; left: 0px; width: 54px;"><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 0px;">1<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 14px;">2<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="false" style="height: 14px; top: 28px;">3<span tabindex="-1" style="display: inline-block; height: 14px;" class="ace_fold-widget ace_start ace_open" role="button" aria-label="Toggle code folding, rows 3 through 14" aria-expanded="true" title="Fold code"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 42px;">4<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 56px;">5<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 70px;">6<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 84px;">7<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 98px;">8<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 112px;">9<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 126px;">10<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 140px;">11<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 154px;">12<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 168px;">13<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 182px;">14<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-active-line ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 196px;">15<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 210px;">16<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 224px;">17<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 238px;">18<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 252px;">19<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 266px;">20<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 280px;">21<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 294px;">22<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 308px;">23<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 322px;">24<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 336px;">25<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 350px;">26<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 364px;">27<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 378px;">28<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 392px;">29<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 406px;">30<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 420px;">31<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 434px;">32<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 448px;">33<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 462px;">34<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 476px;">35<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 490px;">36<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 504px;">37<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 518px;">38<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 532px;">39<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 546px;">40<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 560px;">41<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 574px;">42<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 588px;">43<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 602px;">44<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div><div class="ace_gutter-cell " aria-hidden="true" style="height: 14px; top: 616px;">45<span tabindex="0" style="display: none;"></span><span tabindex="0" style="display: none;"><span></span></span></div></div></div><div class="ace_scroller " style="line-height: 14px; left: 54px; right: 15px; bottom: 0px;"><div class="ace_content" style="top: 0px; left: 0px; width: 1459px; height: 635px;"><div class="ace_layer ace_print-margin-layer"><div class="ace_print-margin" style="left: 542px; visibility: hidden;"></div></div><div class="ace_layer ace_marker-layer"><div class="ace_active-line" style="height: 14px; top: 196px; left: 0px; right: 0px;"></div></div><div class="ace_layer ace_text-layer" style="height: 1e+06px; margin: 0px 4px; top: 0px; left: 0px;"><div class="ace_line_group" style="height: 14px; top: 0px;"><div class="ace_line" style="height: 14px;"><span class="ace_comment">#!/bin/bash</span></div></div><div class="ace_line_group" style="height: 14px; top: 14px;"><div class="ace_line" style="height: 14px;"><span class="ace_variable">kubeconfig_path</span><span class="ace_keyword ace_operator">=</span><span class="ace_string ace_start">'</span><span class="ace_string ace_end">'</span></div></div><div class="ace_line_group" style="height: 14px; top: 28px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">function</span> <span class="ace_support ace_function">unkown_option()</span> <span class="ace_paren ace_lparen">{</span></div></div><div class="ace_line_group" style="height: 14px; top: 42px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">e</span> <span class="ace_string ace_start">"</span><span class="ace_string">\nUnknown K8S node type: </span><span class="ace_variable">$1</span><span class="ace_string"> \n</span><span class="ace_string ace_end">"</span><span class="ace_punctuation ace_operator">;</span> </div></div><div class="ace_line_group" style="height: 14px; top: 56px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">--------------------------------------------------------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 70px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">    Preffered Ubuntu 20.04_LTS or above with bellow requirements</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 84px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">------------------------------ Master setup ------------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 98px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">    Minimum requirement - 2GB RAM &amp; 2Core CPU</span><span class="ace_string ace_end">"</span> </div></div><div class="ace_line_group" style="height: 14px; top: 112px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">    k8s_install.sh master</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 126px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">------------------------------ Worker setup ------------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 140px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">    Minimum requirement - Any</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 154px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">    k8s_install.sh worker</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 168px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_string ace_start">"</span><span class="ace_string">--------------------------------------------------------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 182px;"><div class="ace_line" style="height: 14px;"><span class="ace_paren ace_rparen">}</span></div></div><div class="ace_line_group" style="height: 14px; top: 196px;"><div class="ace_line" style="height: 14px;"></div></div><div class="ace_line_group" style="height: 14px; top: 210px;"><div class="ace_line" style="height: 14px;"><span class="ace_comment"># Check if the machine Linux and Distor is Ubuntu or RHEL(RedHat)</span></div></div><div class="ace_line_group" style="height: 14px; top: 224px;"><div class="ace_line" style="height: 14px;"><span class="ace_variable">UNAME</span><span class="ace_keyword ace_operator">=</span><span class="ace_variable">$</span><span class="ace_paren ace_lparen">(</span><span class="ace_identifier">uname</span> <span class="ace_keyword ace_operator">|</span> <span class="ace_identifier">tr</span> <span class="ace_string ace_start">"</span><span class="ace_string">[:upper:]</span><span class="ace_string ace_end">"</span> <span class="ace_string ace_start">"</span><span class="ace_string">[:lower:]</span><span class="ace_string ace_end">"</span><span class="ace_paren ace_rparen">)</span></div></div><div class="ace_line_group" style="height: 14px; top: 238px;"><div class="ace_line" style="height: 14px;"><span class="ace_comment"># If Linux, try to determine specific distribution</span></div></div><div class="ace_line_group" style="height: 14px; top: 252px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">if</span> <span class="ace_paren ace_lparen">[</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$UNAME</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">"</span><span class="ace_string">linux</span><span class="ace_string ace_end">"</span> <span class="ace_paren ace_rparen">]</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_keyword">then</span></div></div><div class="ace_line_group" style="height: 14px; top: 266px;"><div class="ace_line" style="height: 14px;">    <span class="ace_comment"># If available, use LSB to identify distribution</span></div></div><div class="ace_line_group" style="height: 14px; top: 280px;"><div class="ace_line" style="height: 14px;">    <span class="ace_keyword">if</span> <span class="ace_paren ace_lparen">[</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">f</span> <span class="ace_keyword ace_operator">/</span><span class="ace_identifier">etc</span><span class="ace_keyword ace_operator">/</span><span class="ace_identifier">lsb</span><span class="ace_keyword ace_operator">-</span><span class="ace_identifier">release</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">o</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">d</span> <span class="ace_keyword ace_operator">/</span><span class="ace_identifier">etc</span><span class="ace_keyword ace_operator">/</span><span class="ace_identifier">lsb</span><span class="ace_keyword ace_operator">-</span><span class="ace_identifier">release</span>.<span class="ace_identifier">d</span> <span class="ace_paren ace_rparen">]</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_keyword">then</span></div></div><div class="ace_line_group" style="height: 14px; top: 294px;"><div class="ace_line" style="height: 14px;"><span class="ace_indent-guide">    </span>    <span class="ace_variable">kubeconfig_path</span><span class="ace_keyword ace_operator">=</span><span class="ace_string ace_start">'</span><span class="ace_string">/home/ubuntu</span><span class="ace_string ace_end">'</span> </div></div><div class="ace_line_group" style="height: 14px; top: 308px;"><div class="ace_line" style="height: 14px;">    <span class="ace_keyword">elif</span> <span class="ace_paren ace_lparen">[[</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">f</span> <span class="ace_keyword ace_operator">/</span><span class="ace_identifier">etc</span><span class="ace_keyword ace_operator">/</span><span class="ace_identifier">redhat</span><span class="ace_keyword ace_operator">-</span><span class="ace_identifier">release</span> <span class="ace_paren ace_rparen">]]</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_keyword">then</span></div></div><div class="ace_line_group" style="height: 14px; top: 322px;"><div class="ace_line" style="height: 14px;"><span class="ace_indent-guide">    </span>    <span class="ace_variable">kubeconfig_path</span><span class="ace_keyword ace_operator">=</span><span class="ace_string ace_start">'</span><span class="ace_string">/home/ec2-user</span><span class="ace_string ace_end">'</span></div></div><div class="ace_line_group" style="height: 14px; top: 336px;"><div class="ace_line" style="height: 14px;">    <span class="ace_keyword">else</span> </div></div><div class="ace_line_group" style="height: 14px; top: 350px;"><div class="ace_line" style="height: 14px;"><span class="ace_indent-guide">    </span>    <span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">e</span> <span class="ace_string ace_start">"</span><span class="ace_string">   Linux is not either Ubuntu nor RHEL.... \n</span><span class="ace_string ace_end">"</span><span class="ace_punctuation ace_operator">;</span> </div></div><div class="ace_line_group" style="height: 14px; top: 364px;"><div class="ace_line" style="height: 14px;"><span class="ace_indent-guide">    </span>    <span class="ace_identifier">unkown_option</span></div></div><div class="ace_line_group" style="height: 14px; top: 378px;"><div class="ace_line" style="height: 14px;"><span class="ace_indent-guide">    </span>    <span class="ace_support ace_function ace_builtin">exit</span> <span class="ace_constant ace_numeric">1</span><span class="ace_punctuation ace_operator">;</span> </div></div><div class="ace_line_group" style="height: 14px; top: 392px;"><div class="ace_line" style="height: 14px;">    <span class="ace_keyword">fi</span>  </div></div><div class="ace_line_group" style="height: 14px; top: 406px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">else</span> </div></div><div class="ace_line_group" style="height: 14px; top: 420px;"><div class="ace_line" style="height: 14px;">    <span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">e</span> <span class="ace_string ace_start">"</span><span class="ace_string">    Not a Linux platform ... \n</span><span class="ace_string ace_end">"</span><span class="ace_punctuation ace_operator">;</span> </div></div><div class="ace_line_group" style="height: 14px; top: 434px;"><div class="ace_line" style="height: 14px;">    <span class="ace_identifier">unkown_option</span></div></div><div class="ace_line_group" style="height: 14px; top: 448px;"><div class="ace_line" style="height: 14px;">    <span class="ace_support ace_function ace_builtin">exit</span> <span class="ace_constant ace_numeric">1</span><span class="ace_punctuation ace_operator">;</span> </div></div><div class="ace_line_group" style="height: 14px; top: 462px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">fi</span></div></div><div class="ace_line_group" style="height: 14px; top: 476px;"><div class="ace_line" style="height: 14px;"></div></div><div class="ace_line_group" style="height: 14px; top: 490px;"><div class="ace_line" style="height: 14px;"><span class="ace_paren ace_lparen">[[</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$1</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">"</span><span class="ace_string">--help</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">||</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$1</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">"</span><span class="ace_string">help</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">||</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$1</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">"</span><span class="ace_string">-h</span><span class="ace_string ace_end">"</span> <span class="ace_paren ace_rparen">]]</span> <span class="ace_keyword ace_operator">&amp;&amp;</span> <span class="ace_paren ace_lparen">{</span> <span class="ace_identifier">unkown_option</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_support ace_function ace_builtin">exit</span> <span class="ace_constant ace_numeric">0</span><span class="ace_punctuation ace_operator">;</span><span class="ace_paren ace_rparen">}</span></div></div><div class="ace_line_group" style="height: 14px; top: 504px;"><div class="ace_line" style="height: 14px;"></div></div><div class="ace_line_group" style="height: 14px; top: 518px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">if</span> <span class="ace_paren ace_lparen">[[</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$1</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">'</span><span class="ace_string">master</span><span class="ace_string ace_end">'</span> <span class="ace_paren ace_rparen">]]</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_keyword">then</span> </div></div><div class="ace_line_group" style="height: 14px; top: 532px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">e</span> <span class="ace_string ace_start">"</span><span class="ace_string">\n-------------------------- K8S Master node setup --------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 546px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">elif</span> <span class="ace_paren ace_lparen">[[</span> <span class="ace_string ace_start">"</span><span class="ace_variable">$1</span><span class="ace_string ace_end">"</span> <span class="ace_keyword ace_operator">==</span> <span class="ace_string ace_start">'</span><span class="ace_string">worker</span><span class="ace_string ace_end">'</span> <span class="ace_paren ace_rparen">]]</span><span class="ace_punctuation ace_operator">;</span> <span class="ace_keyword">then</span> </div></div><div class="ace_line_group" style="height: 14px; top: 560px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">echo</span> <span class="ace_keyword ace_operator">-</span><span class="ace_identifier">e</span> <span class="ace_string ace_start">"</span><span class="ace_string">\n-------------------------- K8S Worker node setup --------------------------</span><span class="ace_string ace_end">"</span></div></div><div class="ace_line_group" style="height: 14px; top: 574px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">else</span> </div></div><div class="ace_line_group" style="height: 14px; top: 588px;"><div class="ace_line" style="height: 14px;"><span class="ace_identifier">unkown_option</span> <span class="ace_variable">$1</span></div></div><div class="ace_line_group" style="height: 14px; top: 602px;"><div class="ace_line" style="height: 14px;"><span class="ace_support ace_function ace_builtin">exit</span> <span class="ace_constant ace_numeric">1</span></div></div><div class="ace_line_group" style="height: 14px; top: 616px;"><div class="ace_line" style="height: 14px;"><span class="ace_keyword">fi</span></div></div></div><div class="ace_layer ace_marker-layer"></div><div class="ace_layer ace_cursor-layer"><div class="ace_cursor" style="display: block; top: 196px; left: 4px; width: 7px; height: 14px;"></div></div></div></div><div class="ace_scrollbar ace_scrollbar-v" style="width: 20px; height: 607px; bottom: 0px;"><div class="ace_scrollbar-inner" style="width: 20px; height: 2170px;">&nbsp;</div></div><div class="ace_scrollbar ace_scrollbar-h" style="height: 20px; left: 54px; right: 15px; width: 1459px; display: none;"><div class="ace_scrollbar-inner" style="height: 20px; width: 1459px;">&nbsp;</div></div><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font: inherit; overflow: hidden;"><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font: inherit; overflow: visible;">הההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההההה</div><div style="height: auto; width: auto; top: 0px; left: 0px; visibility: hidden; position: absolute; white-space: pre; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; overflow: visible;">XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</div></div></form></div></div><!----></main><div><!----><div class="overlay" style="display: none;"></div></div><!----></div></div>

    

    

     
    <script nomodule="">!function(){var e=document,t=e.createElement("script");if(!("noModule"in t)&&"onbeforeload"in t){var n=!1;e.addEventListener("beforeload",(function(e){if(e.target===t)n=!0;else if(!e.target.hasAttribute("nomodule")||!n)return;e.preventDefault()}),!0),t.type="module",t.src=".",e.head.appendChild(t),t.remove()}}();</script>
    <script nomodule="" crossorigin="" id="vite-legacy-polyfill" src="./Cluster_setup_using_kubeadm.sh - Files - itdefined.org_files/polyfills-legacy-5429e148.js.download"></script>
    <script nomodule="" crossorigin="" id="vite-legacy-entry" data-src="/static/assets/index-legacy-46142fc1.js">System.import(document.getElementById('vite-legacy-entry').getAttribute('data-src'))</script>
  

</body></html>