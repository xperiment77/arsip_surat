<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="bg-light p-3 mb-3">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <div class=" ">
                        <?php  
                        $this->render_page("banner/list?limit_count=20" , array( 'show_pagination' => false )); 
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
