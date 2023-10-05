<?php
$comp_model = new SharedController;
$page_element_id = "edit-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="edit"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-info p-3 mb-3">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-sm-3 ">
                    <h4 class="record-title">Arsip</h4>
                </div>
                <div class="col-sm-3 ">
                </div>
                <div class="col-sm-6 ">
                    <form  class="search" action="<?php print_link('arsip'); ?>" method="get">
                        <div class="input-group">
                            <input value="<?php echo get_value('search'); ?>" class="form-control" type="text" name="search"  placeholder="Search" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
        <div  class="">
            <div class="container">
                <div class="row ">
                    <div class="col-md-2 comp-grid">
                    </div>
                    <div class="col-md-8 comp-grid">
                        <?php $this :: display_page_errors(); ?>
                        <div  class="bg-light p-3 animated fadeIn page-content">
                            <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-vertical needs-validation" action="<?php print_link("arsip/edit/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                                <div>
                                    <div class="form-group ">
                                        <label class="control-label" for="nama_dokumen">Nama Dokumen </label>
                                        <div id="ctrl-nama_dokumen-holder" class=""> 
                                            <input id="ctrl-nama_dokumen"  value="<?php  echo $data['nama_dokumen']; ?>" type="text" placeholder="Enter Nama Dokumen"  name="nama_dokumen"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="jenis_dokumen">Jenis Dokumen </label>
                                            <div id="ctrl-jenis_dokumen-holder" class=""> 
                                                <input id="ctrl-jenis_dokumen"  value="<?php  echo $data['jenis_dokumen']; ?>" type="text" placeholder="Enter Jenis Dokumen"  name="jenis_dokumen"  class="form-control " />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label class="control-label" for="tanggal_dokumen">Tanggal Dokumen </label>
                                                <div id="ctrl-tanggal_dokumen-holder" class="input-group"> 
                                                    <input id="ctrl-tanggal_dokumen" class="form-control datepicker  datepicker"  value="<?php  echo $data['tanggal_dokumen']; ?>" type="datetime" name="tanggal_dokumen" placeholder="Enter Tanggal Dokumen" data-enable-time="false" data-min-date="" data-max-date="" data-date-format="Y-m-d" data-alt-format="F j, Y" data-inline="false" data-no-calendar="false" data-mode="single" />
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label class="control-label" for="upload_dokumen">Upload Dokumen </label>
                                                    <div id="ctrl-upload_dokumen-holder" class=""> 
                                                        <div class="dropzone " input="#ctrl-upload_dokumen" fieldname="upload_dokumen"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                            <input name="upload_dokumen" id="ctrl-upload_dokumen" class="dropzone-input form-control" value="<?php  echo $data['upload_dokumen']; ?>" type="text"  />
                                                                <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                            </div>
                                                        </div>
                                                        <?php Html :: uploaded_files_list($data['upload_dokumen'], '#ctrl-upload_dokumen'); ?>
                                                    </div>
                                                </div>
                                                <div class="form-ajax-status"></div>
                                                <div class="form-group text-center">
                                                    <button class="btn btn-primary" type="submit">
                                                        Update
                                                        <i class="fa fa-send"></i>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-2 comp-grid">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
