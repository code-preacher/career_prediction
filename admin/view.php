
<?php
require_once '../library/lib.php';
require_once '../classes/crud.php';
?>

<?php
$lib=new Lib;
$crud=new Crud;
$lib->check_login2();

$d=$crud->displayOneSpecific('career','id',$_GET['id']);
if ($d == false) {
 header("location:view-career.php");
}
?>


<?php
include 'inc/header.php';
include 'inc/sidebar.php';
?>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">DIAGNOSIS</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Diagnostic Detail</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                <div class="col-md-12">
                        <div class="card">
                            <div class="card-title"><!-- 
                                <h4>DIAGNOSIS</h4> -->

                            </div>
                            <div class="card-body">
                                <div class="basic-form">
                                    <form action="add-diagnose.php" method="POST">
                                       <div class="row p-t-20">

                                          <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">What are you passoinate about in an organisation: </label>
                                                    <input class="form-control custom-select" value="<?=$d['f1']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What will be your career goal in a work place:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f2']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->


                                          
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">How do you handle stress:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f3']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What is your philosophy:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f4']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">Do you prefer team work or one man thing:</label>
                                                     <input class="form-control custom-select" value="<?=$d['f5']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What motivates you:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f6']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What makes you uncomfortable:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f7']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->
                                             <!--/span-->
                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What do you do at your leisure time:</label>
                                                     <input class="form-control custom-select" value="<?=$d['f8']?>" disabled="disabled">
                                                     </div>
                                            </div>
                                            <!--/span-->

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">If you are faced with problem at work, what will you do:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f9']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What field of study do you have passion for:</label>
                                                     <input class="form-control custom-select" value="<?=$d['f10']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">Do you like calculations:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f11']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What is your reading rate:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f12']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">What is your level of education:</label>
                                                     <input class="form-control custom-select" value="<?=$d['f13']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-6">
                                              <div class="form-group">
                                                    <label class="control-label">How well do you perform in school:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f14']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-12">
                                              <div class="form-group">
                                                    <label class="control-label">What is your marital status:</label>
                                                    <input class="form-control custom-select" value="<?=$d['f15']?>" disabled="disabled">
                                                     </div>
                                            </div>


                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Result :</label>
                                                   <input class="form-control custom-select" value="<?=$d['result']?>" disabled="disabled">
                                                     </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">Career Advice :</label>
                                                   <input class="form-control custom-select" value="<?=$d['advice']?>" disabled="disabled">
                                                     </div>
                                            </div>
                             

                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
 <?php
include 'inc/footer.php';
?>
 
    <script>
        //***********************************//
        // For select 2
        //***********************************//
        $(".select2").select2();

        /*colorpicker*/
        $('.demo').each(function() {
        //
        // Dear reader, it's actually very easy to initialize MiniColors. For example:
        //
        //  $(selector).minicolors();
        //
        // The way I've done it below is just for the demo, so don't get confused
        // by it. Also, data- attributes aren't supported at this time...they're
        // only used for this demo.
        //
        $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                position: $(this).attr('data-position') || 'bottom left',

                change: function(value, opacity) {
                    if (!value) return;
                    if (opacity) value += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(value);
                    }
                },
                theme: 'bootstrap'
            });

        });
        /*datwpicker*/
        jQuery('.mydatepicker').datepicker();
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true,
            todayHighlight: true
        });
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

    </script>
</body>

</html>