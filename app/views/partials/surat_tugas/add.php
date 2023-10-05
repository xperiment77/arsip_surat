<?php
$comp_model = new SharedController;
$page_element_id = "add-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="add"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-info p-3 mb-3">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-sm-3 ">
                    <h4 class="record-title">Surat Tugas</h4>
                </div>
                <div class="col-sm-3 ">
                </div>
                <div class="col-sm-6 ">
                    <form  class="search" action="<?php print_link('surat_tugas'); ?>" method="get">
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
                    <div class="col-md-12 comp-grid">
                        <?php $this :: display_page_errors(); ?>
                        <div  class="bg-light p-3 animated fadeIn page-content">
                            <form id="surat_tugas-add-form" role="form" novalidate enctype="multipart/form-data" class="form page-form form-vertical needs-validation" action="<?php print_link("surat_tugas/add?csrf_token=$csrf_token") ?>" method="post">
                                <div>
                                    <div class="form-group ">
                                        <label class="control-label" for="nama_dokumen">Nama Dokumen </label>
                                        <div id="ctrl-nama_dokumen-holder" class=""> 
                                            <input id="ctrl-nama_dokumen"  value="<?php  echo $this->set_field_value('nama_dokumen',""); ?>" type="text" placeholder="Enter Nama Dokumen"  name="nama_dokumen"  class="form-control " />
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label class="control-label" for="upload">Upload </label>
                                            <div id="ctrl-upload-holder" class=""> 
                                                <div class="dropzone " input="#ctrl-upload" fieldname="upload"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" filesize="3" maximum="1">
                                                    <input name="upload" id="ctrl-upload" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('upload',""); ?>" type="text"  />
                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group form-submit-btn-holder text-center mt-3">
                                            <div class="form-ajax-status"></div>
                                            <button class="btn btn-primary" type="submit">
                                                Submit
                                                <i class="fa fa-send"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
