<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("nota_dinas/add");
$can_edit = ACL::is_allowed("nota_dinas/edit");
$can_view = ACL::is_allowed("nota_dinas/view");
$can_delete = ACL::is_allowed("nota_dinas/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "view-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data Information from Controller
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id; //Page id from url
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_edit_btn = $this->show_edit_btn;
$show_delete_btn = $this->show_delete_btn;
$show_export_btn = $this->show_export_btn;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="view"  data-display-type="custom" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-info p-3 mb-3">
        <div class="container-fluid">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">Nota Dinas</h4>
                </div>
                <div class="col-sm-3 ">
                </div>
                <div class="col-sm-4 ">
                    <form  class="search" action="<?php print_link('nota_dinas'); ?>" method="get">
                        <div class="input-group">
                            <input value="<?php echo get_value('search'); ?>" class="form-control" type="text" name="search"  placeholder="Search" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-12 comp-grid">
                    </div>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
        <div  class="my-5">
            <div class="container">
                <div class="row ">
                    <div class="col-md-12 comp-grid">
                        <?php $this :: display_page_errors(); ?>
                        <div  class="card animated bounceInDown page-content">
                            <?php
                            $counter = 0;
                            if(!empty($data)){
                            $rec_id = (!empty($data['id']) ? urlencode($data['id']) : null);
                            $counter++;
                            ?>
                            <div  id="page-report-body" class="">
                                <div class="detail-list td-nama_dokumen">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            Nama Dokumen
                                        </div>
                                        <div class="col-sm-9">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['nama_dokumen']; ?>" 
                                                data-pk="<?php echo $data['id'] ?>" 
                                                data-url="<?php print_link("nota_dinas/editfield/" . urlencode($data['id'])); ?>" 
                                                data-name="nama_dokumen" 
                                                data-title="Enter Nama Dokumen" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['nama_dokumen']; ?> 
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="detail-list td-upload">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            Upload
                                        </div>
                                        <div class="col-sm-9">
                                            <?php Html :: page_link_file($data['upload']); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="p-3">
                                <?php if($can_edit){ ?>
                                <a class="btn btn-sm btn-info"  href="<?php print_link("nota_dinas/edit/$rec_id"); ?>">
                                    <i class="fa fa-edit"></i> Edit
                                </a>
                                <?php } ?>
                                <?php if($can_delete){ ?>
                                <a class="btn btn-sm btn-danger record-delete-btn mx-1"  href="<?php print_link("nota_dinas/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Are you sure you want to delete this record?" data-display-style="modal">
                                    <i class="fa fa-times"></i> Delete
                                </a>
                                <?php } ?>
                            </div>
                            <?php
                            }
                            else{
                            ?>
                            <!-- Empty Record Message -->
                            <div class="text-muted p-3">
                                <i class="fa fa-ban"></i> No Record Found
                            </div>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
