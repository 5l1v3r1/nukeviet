{if not $POPUP}
<div class="filemanager-wraper filemanager-inline" id="upload-container"></div>
<script type="text/javascript" src="{$NV_BASE_SITEURL}{$NV_ASSETS_DIR}/js/nv.upload.js"></script>
<script>
$(document).on("nv.upload.ready", function() {
    $("#upload-container").nvstaticupload({
        modal: false,
        adminBaseUrl: '{$NV_BASE_ADMINURL}'
    });
});
</script>
{else}
<div class="card card-filemanager card-border-color card-border-color-primary" id="nv-filemanager">
    <div class="card-body">
        <div class="fm-container">
            <div class="fm-folders">
                <div class="fm-folders-wrap">
                    <div class="fm-folders-head">
                        <i class="icon fas fa-th-large"></i>Quản lý files
                    </div>
                    <div class="fm-folders-body nv-scroller">
                        <div class="fm-folders-tree">
                            <span class="fm-folders-toggle" id="nv-filemanager-folder-btn-toggle"><i class="icon fas fa-folder-open"></i><span>news/2018_03</span></span>
                            <ul id="nv-filemanager-folder">
                                <li class="open">
                                    <a href="#"><i class="icon fas fa-folder-open"></i>uploads<span class="toggle"><i class="fas"></i></span></a>
                                    <ul>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>abouts</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>banners</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>comments</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>contact</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>freecontent</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>menu</a></li>
                                        <li class="open">
                                            <a href="#"><i class="icon fas fa-folder-open"></i>news<span class="toggle"><i class="fas"></i></span></a>
                                            <ul>
                                                <li class="active"><a href="#"><i class="icon fas fa-folder-open"></i>2018_03</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>2018_04</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>source</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>temp_pic</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>page</a></li>
                                        <li>
                                            <a href="#"><i class="icon fas fa-folder-open"></i>shops<span class="toggle"><i class="fas"></i></span></a>
                                            <ul>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>2018_03</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>2018_04</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>source</a></li>
                                                <li><a href="#"><i class="icon fas fa-folder-open"></i>temp_pic</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>siteterms</a></li>
                                        <li><a href="#"><i class="icon fas fa-folder-open"></i>users</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fm-contents">
                <div class="fm-contents-wrap">
                    <div class="fm-tools">
                        <div class="fm-tools-wrap">
                            <div class="btn-icon">
                                <div class="btn-group btn-space btn-upload">
                                    <button type="button" class="btn btn-primary">Tải file lên</button>
                                    <button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle"><span class="fas fa-chevron-down"></span></button>
                                    <div role="menu" class="dropdown-menu  dropdown-menu-right">
                                        <a href="#" class="dropdown-item">Upload từ internet</a>
                                    </div>
                                </div>
                            </div>
                            <ul class="tools">
                                <li class="iconp-search"><a href="#nv-filemanager-form-search" data-toggle="modal" data-backdrop="static" class="icon-search nv-filemanager-btn-search"><i class="fas fa-search"></i></a></li>
                                <li class="iconp-cview"><a href="#" class="icon-cview" id="nv-filemanager-btn-change-viewmode"><i class="fas"></i></a></li>
                                <li class="iconp-reload"><a href="#" class="icon-reload" id="nv-filemanager-btn-reload"><i class="fas fa-sync-alt"></i></a></li>
                                <li class="iconp-collapse"><a href="#" class="icon-collapse" id="nv-filemanager-btn-toggle-form-filter"><i class="fas fa-cog"></i></i></a></li>
                            </ul>
                            <div class="form" id="nv-filemanager-form-filter">
                                <div class="btn-group btn-space">
                                    <button type="button" data-toggle="dropdown" class="btn btn-secondary dropdown-toggle" data-value="all" id="nv-filemanager-ctn-filter-type"><span class="text">Tất cả</span> <span class="icon-dropdown fas fa-chevron-down"></span></button>
                                    <div role="menu" class="dropdown-menu">
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-type" data-value="all">Tất cả</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-type" data-value="image">Hình ảnh</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-type" data-value="flash">Flash</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-type" data-value="video">Video</a>
                                    </div>
                                </div>
                                <div class="btn-group btn-space">
                                    <button type="button" data-toggle="dropdown" class="btn btn-secondary dropdown-toggle" data-value="all" id="nv-filemanager-ctn-filter-user"><span class="text">Của tất cả</span> <span class="icon-dropdown fas fa-chevron-down"></span></button>
                                    <div role="menu" class="dropdown-menu">
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-user" data-value="all">Của tất cả</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-user" data-value="me">Của tôi</a>
                                    </div>
                                </div>
                                <div class="btn-group btn-space">
                                    <button type="button" data-toggle="dropdown" class="btn btn-secondary dropdown-toggle" data-value="newest" id="nv-filemanager-ctn-filter-sort"><span class="text">Sắp xếp theo ngày mới</span> <span class="icon-dropdown fas fa-chevron-down"></span></button>
                                    <div role="menu" class="dropdown-menu">
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-sort" data-value="newest">Sắp xếp theo ngày mới</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-sort" data-value="oldest">Sắp xếp theo ngày cũ</a>
                                        <a href="#" class="dropdown-item nv-filemanager-btn-filter-sort" data-value="size">Sắp xếp theo dung lượng</a>
                                    </div>
                                </div>
                                <a href="#nv-filemanager-form-search" class="icon-search nv-filemanager-btn-search" data-toggle="modal" data-backdrop="static"><i class="fas fa-search"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="fm-files nv-scroller">
                        <div class="files-container" id="nv-filemanager-files-container">
                            <ul>
                                <li>
                                    <div class="file">
                                        <div class="img">
                                            <div class="bg" style="background-image: url('{$NV_BASE_SITEURL}assets/news/hoptac.jpg');"><img src="{$NV_BASE_SITEURL}assets/news/hoptac.jpg" alt="Image"></div>
                                        </div>
                                        <div class="name"><i class="icon fas fa-file-image"></i>943 s asd asd asd.jpg</div>
                                        <div class="info">1430 x 586 pixels</div>
                                    </div>
                                </li>
                                <li>
                                    <div class="file">
                                        <div class="img">
                                            <div class="bg" style="background-image: url('{$NV_BASE_SITEURL}assets/news/hoptac.jpg');"><img src="{$NV_BASE_SITEURL}assets/news/hoptac.jpg" alt="Image"></div>
                                        </div>
                                        <div class="name"><i class="icon fas fa-file-image"></i>943 s asd asd asd.jpg</div>
                                        <div class="info">1430 x 586 pixels</div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <nav class="fm-pagination">
                        <ul class="pagination justify-content-center">
                            <li class="page-item"><a href="#" aria-label="Previous" class="page-link"><span aria-hidden="true" class="fas fa-chevron-left"></span></a></li>
                            <li class="page-item"><a href="#" class="page-link">1</a></li>
                            <li class="page-item active"><a href="#" class="page-link">2</a></li>
                            <li class="page-item"><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link">6</a></li>
                            <li class="page-item"><a href="#" class="page-link">7</a></li>
                            <li class="page-item"><a href="#" aria-label="Next" class="page-link"><span aria-hidden="true" class="fas fa-chevron-right"></span></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="filemanager-dropzone" id="filemanager-dropzone-ctn">
        <div class="dropzone-bg"></div>
        <div class="dropzone-ctn">
            <div class="spacer"></div>
            <div class="body">
                <div class="icon"><i class="fas fa-cloud-upload-alt"></i></div>
                <h2>Kéo và thả file vào đây để tải lên</h2>
            </div>
            <div class="spacer"></div>
        </div>
        <div class="dropzone-mark" id="filemanager-dropzone-area"></div>
    </div>
    <div class="filemanager-loader">
        <div><i class="fas fa-spinner fa-pulse"></i></div>
    </div>
</div>
<!-- Các input ẩn để lưu các giá trị -->
<input type="hidden" name="currentFileUrl" value="">
<input type="hidden" name="selFile" value="">
<input type="hidden" name="CKEditorFuncNum" value="">
<input type="hidden" name="area" value="">
<input type="hidden" name="alt" value="">
<input type="hidden" name="upload_logo" value="">
<input type="hidden" name="upload_logo_config" value="">
<!-- Tìm kiếm -->
<div id="nv-filemanager-form-search" tabindex="-1" role="dialog" class="modal fade colored-header colored-header-primary">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header modal-header-colored">
                <h3 class="modal-title">Tìm kiếm file</h3>
                <button type="button" data-dismiss="modal" aria-hidden="true" class="close md-close"><span class="fas fa-times"></span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Tìm kiếm trong thư mục.</label>
                    <select class="form-control">
                        <option value="">uploads</option>
                        <option value="">uploads/news</option>
                        <option value="">uploads/news/2018_05</option>
                        <option value="">uploads/uses</option>
                        <option value="">uploads/voting</option>
                        <option value="">uploads/weblinks</option>
                    </select>
                </div>
                <div class="form-group mb-0">
                    <label>Từ khóa tìm kiếm.</label>
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-secondary md-close">Hủy bỏ</button>
                <button type="button" data-dismiss="modal" class="btn btn-primary md-close">Tìm kiếm</button>
            </div>
        </div>
    </div>
</div>
<!-- Lưu nội dung menu khi ấn chuột phải -->
<div class="d-none" id="contextMenu"></div>
{/if}

{*
<!-- BEGIN: uploadPage -->
<iframe src="{IFRAME_SRC}" id="uploadframe"></iframe>
<!-- END: uploadPage -->
<!-- BEGIN: main -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.treeview.css" rel="stylesheet" />
<link  type="text/css"href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/cropper/cropper.min.css" rel="stylesheet" />

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/cropper/cropper.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.flash.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.treeview.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jQueryRotate.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/plupload/plupload.full.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/plupload-{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/clipboard/clipboard.min.js"></script>

<div class="content">
    <div class="row upload-wrap">
        <div class="col-lg-4 col-md-4 col-sm-6 imgfolder" id="imgfolder">
            <p class="upload-loading">
                <em class="fa fa-spin fa-spinner fa-2x m-bottom"></em>
                <br />
                {LANG.waiting}...
            </p>
        </div>
        <div id="upload-content" class="col-lg-20 col-md-20 col-sm-18 filebrowse">
            <div id="imglist" class="clearfix">
                <p class="upload-loading">
                    <em class="fa fa-spin fa-spinner fa-2x m-bottom"></em>
                    <br />
                    {LANG.waiting}...
                </p>
            </div>
            <div id="upload-queue"></div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="row">
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-1">
                    <div class="refresh text-right">
                        <em title="{LANG.refresh}" class="fa fa-refresh fa-pointer" data-busy="false"></em>
                    </div>
                </div>
                <div class="col-sm-1">
                    <div class="viewmode text-right">
                        <em class="fa fa-hourglass-o fa-pointer fa-spin" data-auto="true" data-langthumb="{LANG.upload_view_thumbnail}" data-langdetail="{LANG.upload_view_detail}"></em>
                    </div>
                </div>
                <div class="col-sm-5">
                    <select name="imgtype" title="{LANG.selectfiletype}" class="form-control input-sm vchange">
                        <option value="file"{SFILE}>{LANG.type_file}</option>
                        <option value="image"{SIMAGE}>{LANG.type_image}</option>
                        <option value="flash"{SFLASH}>{LANG.type_flash}</option>
                    </select>
                </div>
                <div class="col-sm-5">
                    <select name="author" title="{LANG.author}" class="form-control input-sm vchange">
                        <option value="0">{LANG.author0}</option>
                        <option value="1">{LANG.author1}</option>
                    </select>
                </div>
                <div class="col-sm-8">
                    <select name="order" class="form-control input-sm vchange">
                        <option value="0">{LANG.order0}</option>
                        <option value="1">{LANG.order1}</option>
                        <option value="2">{LANG.order2}</option>
                    </select>
                </div>
                <div class="col-sm-4">
                    <div class="search text-left">
                        <em title="{LANG.search}" class="fa fa-search fa-lg fa-pointer"></em>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12">
            <div id="upload-button-area" title="{LANG.nv_max_size}: {NV_MAX_SIZE}">&nbsp;</div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<input type="hidden" name="currentFileUrl" value=""/>
<input type="hidden" name="selFile" value=""/>
<input type="hidden" name="CKEditorFuncNum" value="{FUNNUM}"/>
<input type="hidden" name="area" value="{AREA}"/>
<input type="hidden" name="alt" value="{ALT}"/>
<input type="hidden" name="upload_logo" value="{UPLOAD_LOGO}"/>
<input type="hidden" name="upload_logo_config" value="{UPLOAD_LOGO_CONFIG}"/>

<div class="upload-hide" id="contextMenu"></div>

<div class="upload-hide">
    <iframe id="Fdownload" src="" width="0" height="0" frameborder="0"></iframe>
</div>

<div id="renamefolder" class="upload-hide" title="{LANG.renamefolder}">
    <div class="form-horizontal" role="form">
        <div class="form-group">
            <label class="control-label col-xs-6">{LANG.rename_newname}:</label>
            <div class="col-xs-18">
                <input type="text" name="foldername" class="form-control dynamic"/>
            </div>
        </div>
    </div>
</div>

<div id="createfolder" class="upload-hide" title="{LANG.createfolder}">
    <div class="form-horizontal" role="form">
        <div class="form-group">
            <label class="control-label col-xs-10">{LANG.foldername}:</label>
            <div class="col-xs-14">
                <input type="text" name="createfoldername" class="form-control dynamic"/>
            </div>
        </div>
    </div>
</div>

<div id="recreatethumb" class="upload-hide" title="{LANG.recreatethumb}">
    <div class="form-horizontal" role="form">
        <div class="form-group" id="recreatethumb_loading">
            {LANG.recreatethumb_note}
        </div>
    </div>
</div>

<div id="errorInfo" class="upload-hide" title="{LANG.errorInfo}"></div>

<div id="imgpreview" title="{LANG.preview}">
    <div id="fileInfoAlt" class="dynamic file-title"></div>
    <div id="fileView" class="dynamic file-content"></div>
    <div id="fileInfoName" class="dynamic file-title"></div>
    <div id="fileInfoDetail" class="dynamic file-detail m-bottom"></div>
    <div class="clearfix" id="fileInfoLink">
        <label for="FileRelativePath" class="text-left display-block">{LANG.filerelativepath}:</label>
        <div class="input-group input-group-sm m-bottom">
            <input type="text" class="form-control" id="FileRelativePath"/>
            <span class="input-group-btn">
                <button class="btn btn-default" data-clipboard-target="#FileRelativePath" id="FileRelativePathBtn" data-title="{LANG.filepathcopied}" data-placement="left" data-container="body" data-trigger="manual" data-animation="0"><i class="fa fa-copy"></i></button>
            </span>
        </div>
        <label for="FileAbsolutePath" class="text-left">{LANG.fileabsolutepath}:</label>
        <div class="input-group input-group-sm">
            <input type="text" class="form-control" id="FileAbsolutePath"/>
            <span class="input-group-btn">
                <button class="btn btn-default" data-clipboard-target="#FileAbsolutePath" id="FileAbsolutePathBtn" data-title="{LANG.filepathcopied}" data-placement="left" data-container="body" data-trigger="manual" data-animation="0"><i class="fa fa-copy"></i></button>
            </span>
        </div>
    </div>
</div>

<div id="imgcreate" title="{LANG.upload_createimage}">
    <div class="row">
        <div class="col-xs-10">
            <input type="hidden" name="origWidth" value="" class="dynamic" />
            <input type="hidden" name="origHeight" value="" class="dynamic" />
            <div class="title">{LANG.newSize}</div>
            <div class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-xs-4 control-label">X:</label>
                    <div class="col-xs-8"><input type="text" name="newWidth" maxlength="4" class="dynamic form-control" /></div>
                    <label class="col-xs-4 control-label">Y:</label>
                    <div class="col-xs-8"><input type="text" name="newHeight" maxlength="4" class="dynamic form-control" /></div>
                </div>
            </div>
            <div class="text-center form-group">
                <button class="btn btn-default" type="button" name="prView"><em class="fa fa-search fa-lg"></em> {LANG.prView}</button>
                <button class="btn btn-primary" type="button" name="newSizeOK">{LANG.addlogosave}</button>
            </div>
            <div title="createInfo" class="dynamic text-center text-muted"></div>
        </div>
        <div class="col-xs-14 text-center">
            <div class="image-preview-wrap clearfix">
                <div id="fileInfoName2" class="dynamic title"></div>
                <div id="fileInfoDetail2" class="dynamic"></div>
                <div class="image-preview">
                    <img name="myFile2" alt="{LANG.clickSize}" width="0" height="0" src="" />
                </div>
            </div>
        </div>
    </div>
</div>

<div id="filemove" title="{LANG.move}">
    <div title="pathFileName" class="dynamic filename"></div>
    <div class="form-group">
        <label>{LANG.movefolder}:</label>
        <select name="newPath" class="form-control"></select>
    </div>
    <div class="checkbox">
        <label>
            <input name="mirrorFile" type="checkbox" class="dynamic" /> {LANG.mirrorFile}.
        </label>
    </div>
    <div class="checkbox">
        <label>
            <input name="goNewPath" type="checkbox" class="dynamic" /> {LANG.goNewPath}.
        </label>
    </div>
    <div class="text-center">
        <input type="button" value="{LANG.addlogosave}" name="newPathOK" class="btn btn-primary"/>
    </div>
</div>

<div id="filesearch" title="{LANG.search}">
    <form method="get" onsubmit="return searchfile();" role="form">
        <div class="form-group">
            <label>{LANG.searchdir}:</label>
            <select name="searchPath" class="form-control"></select>
        </div>
        <div class="form-group">
            <label>{LANG.searchkey}:</label>
            <input name="q" type="text" class="form-control dynamic" />
        </div>
        <div class="text-center">
            <button type="submit" name="search" class="btn btn-primary">{LANG.search}</button>
        </div>
    </form>
</div>

<div id="filerename" title="{LANG.rename}">
    <div id="filerenameOrigName" class="dynamic origname text-center"></div>
    <div class="form-horizontal" role="form">
        <div class="form-group">
            <label class="col-xs-8 control-label">{LANG.rename_newname}:</label>
            <div class="col-xs-14">
                <input type="text" name="filerenameNewName" maxlength="255" class="dynamic form-control" />
            </div>
            <div class="col-xs-2">
                <span title="Ext">Ext</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-8 control-label">{LANG.altimage}:</label>
            <div class="col-xs-16">
                <input type="text" name="filerenameAlt" maxlength="255" class="dynamic form-control" />
            </div>
        </div>
        <div class="text-center">
            <input class="btn btn-primary" type="button" value="{LANG.addlogosave}" name="filerenameOK" />
        </div>
    </div>
</div>

<div id="rorateimage" title="{LANG.rotate}">
    <input type="hidden" class="dynamic" name="roratePath" value=""/>
    <input type="hidden" class="dynamic" name="rorateFile" value=""/>
    <h4 class="text-center"><strong id="rorateimageName" class="dynamic">&nbsp;</strong></h4>
    <div id="rorateContent" class="rorate-content">

    </div>
    <div class="text-center form-inline">
        <input type="text" class="form-control w50 dynamic" name="rorateDirection" value="0"/>
        <button id="rorate90Anticlockwise" type="button" class="btn btn-default">
            <em class="fa fa-lg fa-undo"></em> 90
        </button>
        <button id="rorateLeft" type="button" class="btn btn-default btn-reset">
            <em class="fa fa-lg fa-undo"></em>
        </button>
        <button id="rorateRight" type="button" class="btn btn-default btn-reset">
            <em class="fa fa-lg fa-repeat"></em>
        </button>
        <button id="rorate90Clockwise" type="button" class="btn btn-default">
            <em class="fa fa-lg fa-repeat"></em> 90
        </button>
        <input id="rorateimageOK" type="button" class="btn btn-primary" value="{LANG.addlogosave}"/>
    </div>
</div>

<div id="uploadremote" title="{LANG.upload_mode_remote}">
    <div class="row">
        <label for="uploadremoteFile">{LANG.enter_url}</label>
    </div>
    <div class="row">
        <input type="text" class="form-control dynamic" name="uploadremoteFile" id="uploadremoteFile"/>
    </div>
    <div class="dynamic text-center" id="upload-remote-info"></div>
    <!-- BEGIN: alt_remote -->
    <div class="row">
        <label for="uploadremoteFileAlt">{LANG.altimage}</label>
    </div>
    <div class="row">
        <input type="text" class="form-control dynamic" name="uploadremoteFileAlt" id="uploadremoteFileAlt"/>
    </div>
    <!-- END: alt_remote -->
    <div class="row text-center">
        <input type="button" class="btn btn-primary" name="uploadremoteFileOK" value="{LANG.upload_file}"/>
    </div>
</div>

<div id="cropimage" title="{LANG.crop}">
    <div id="cropContent" class="crop-content"></div>
    <div id="cropButtons" class="text-center form-inline dynamic"></div>
</div>

<div id="addlogo" title="{LANG.addlogo}">
    <div id="addlogoContent" class="addlogo-content"></div>
    <div id="addlogoButtons" class="text-center form-inline dynamic"></div>
</div>

<script type="text/javascript">
//<![CDATA[
var LANG = [];
LANG.upload_size = "{LANG.upload_size}";
LANG.pubdate = "{LANG.pubdate}";
LANG.download = "{LANG.download}";
LANG.preview = "{LANG.preview}";
LANG.addlogo = "{LANG.addlogo}";
LANG.select = "{LANG.select}";
LANG.upload_createimage = "{LANG.upload_createimage}";
LANG.move = "{LANG.move}";
LANG.move_multiple = "{LANG.move_multiple}";
LANG.rename = "{LANG.rename}";
LANG.upload_delfile = "{LANG.upload_delfile}";
LANG.createfolder = "{LANG.createfolder}";
LANG.recreatethumb = "{LANG.recreatethumb}";
LANG.recreatethumb_note = "{LANG.recreatethumb_note}";
LANG.recreatethumb_result = "{LANG.recreatethumb_result}";
LANG.renamefolder = "{LANG.renamefolder}";
LANG.deletefolder = "{LANG.deletefolder}";
LANG.delete_folder = "{LANG.delete_folder}";
LANG.rename_nonamefolder = "{LANG.rename_nonamefolder}";
LANG.folder_exists = "{LANG.folder_exists}";
LANG.name_folder_error = "{LANG.name_folder_error}";
LANG.rename_noname = "{LANG.rename_noname}";
LANG.upload_delimg_confirm = "{LANG.upload_delimg_confirm}";
LANG.upload_delimgs_confirm = "{LANG.upload_delimgs_confirm}";
LANG.origSize = "{LANG.origSize}";
LANG.errorMinX = "{LANG.errorMinX}";
LANG.errorMaxX = "{LANG.errorMaxX}";
LANG.errorMinY = "{LANG.errorMinY}";
LANG.errorMaxY = "{LANG.errorMaxY}";
LANG.errorEmptyX = "{LANG.errorEmptyX}";
LANG.errorEmptyY = "{LANG.errorEmptyY}";
LANG.crop = "{LANG.crop}";
LANG.rotate = "{LANG.rotate}";
LANG.notupload = "{LANG.notupload}";
LANG.upload_file = "{LANG.upload_file}";
LANG.upload_mode = "{LANG.upload_mode}";
LANG.upload_mode_remote = "{LANG.upload_mode_remote}";
LANG.upload_mode_local = "{LANG.upload_mode_local}";
LANG.upload_cancel = "{LANG.upload_cancel}";
LANG.upload_add_files = "{LANG.upload_add_files}";
LANG.file_name = "{LANG.file_name}";
LANG.upload_status = "{LANG.upload_status}";
LANG.upload_info = "{LANG.upload_info}";
LANG.upload_stop = "{LANG.upload_stop}";
LANG.upload_continue = "{LANG.upload_continue}";
LANG.upload_finish = "{LANG.upload_finish}";
LANG.crop_error_small = "{LANG.crop_error_small}";
LANG.crop_keep_original = "{LANG.crop_keep_original}";
LANG.save = "{LANG.addlogosave}";
LANG.notlogo = "{LANG.notlogo}";
LANG.addlogo_error_small = "{LANG.addlogo_error_small}";
LANG.altimage = "{LANG.altimage}";
LANG.upload_alt_note = "{LANG.upload_alt_note}";

var nv_my_domain = '{NV_MY_DOMAIN}';
var nv_max_size_bytes = '{NV_MAX_SIZE_BYTES}';
var nv_max_width = '{NV_MAX_WIDTH}';
var nv_max_height = '{NV_MAX_HEIGHT}';
var nv_min_width = '{NV_MIN_WIDTH}';
var nv_min_height = '{NV_MIN_HEIGHT}';
var nv_chunk_size = '{NV_CHUNK_SIZE}';
var nv_module_url = "{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}=";
var nv_namecheck = /^([a-zA-Z0-9_-])+$/;
var array_images = ["gif", "jpg", "jpeg", "pjpeg", "png"];
var nv_loading_data = '<p class="upload-loading"><em class="fa fa-spin fa-spinner fa-2x m-bottom"></em><br />{LANG.waiting}...</p>';

// Resize images on clientside if we can
var nv_resize = {
    width : {NV_MAX_WIDTH},
    height : {NV_MAX_HEIGHT},
    quality : 99,
    crop: false // crop to exact dimensions
};
<!-- BEGIN: no_auto_resize -->
var nv_resize = false;
<!-- END: no_auto_resize -->

var nv_alt_require = {UPLOAD_ALT_REQUIRE};
var nv_auto_alt = {UPLOAD_AUTO_ALT};
//]]>
</script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/upload.js"></script>
<script type="text/javascript">
$(function(){
    $("#imgfolder").load(nv_module_url + "folderlist&path={PATH}&currentpath={CURRENTPATH}&random=" + nv_randomNum(10));
    $("#imglist").load(nv_module_url + "imglist&path={CURRENTPATH}&type={TYPE}&imgfile={SELFILE}&random=" + nv_randomNum(10), function(){ LFILE.setViewMode(); });
});
</script>
<!--  END: main  -->
*}
