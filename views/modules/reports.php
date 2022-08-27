<?php
error_reporting(0);
if($_SESSION["profile"] == "Special" || $_SESSION["profile"] == "Seller"){

  echo '<script>

    window.location = "home";

  </script>';

  return;

}

?>
<div class="content-wrapper">



  <section class="content">

    <div class="box">
 <h3 class="box-title">Sales Report</h3>
      <div class="box-header with-border">


        <div class="input-group">

          <button type="button" class="btn btn-default" id="daterange-btn2" name="daterange-btn2">

            <span>
              <i class="fa fa-calendar"></i> Date range
            </span>

            <i class="fa fa-caret-down"></i>

          </button>

        </div>

        <div class="box-tools pull-right">

        <?php

        if(isset($_GET["initialDate"])){

          echo '<a href="views/modules/download-report.php?report=report&initialDate='.$_GET["initialDate"].'&finalDate='.$_GET["finalDate"].'">';

        }else{

           echo '<a href="views/modules/download-report.php?report=report">';

        }         

        ?>
           
           <button class="btn btn-success" style="margin-top:5px">Export to Excel</button>

          </a>

        </div>
         
      </div>

      <div class="box-body">
        
        <div class="row">

          <div class="col-xs-12">
         

          </div>

           <div class="col-md-6 col-xs-12">
             
          

          </div>

          <div class="col-md-6 col-xs-12">
           

         </div>

         <div class="col-md-6 col-xs-12">
           
           
         </div>
          
        </div>

      </div>
      
    </div>


  </section>
 
 </div>
             <script>
           
/*=============================================
LOCAL STORAGE VARIABLE 
=============================================*/

if(localStorage.getItem("captureRange2") != null){

  $("#daterange-btn2 span").html(localStorage.getItem("captureRange2"));


}else{

  $("#daterange-btn2 span").html('<i class="fa fa-calendar"></i> Date Range')

}

/*=============================================
DATES RANGE
=============================================*/

$('#daterange-btn2').daterangepicker(
  {
    ranges   : {
      'Today'       : [moment(), moment()],
      'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
      'Last 7 days' : [moment().subtract(6, 'days'), moment()],
      'Last 30 days': [moment().subtract(29, 'days'), moment()],
      'this month'  : [moment().startOf('month'), moment().endOf('month')],
      'Last month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
    },
    startDate: moment(),
    endDate  : moment()
  },
  function (start, end) {
    $('#daterange-btn2 span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));

    var initialDate = start.format('YYYY-MM-DD');

    var finalDate = end.format('YYYY-MM-DD');

    var captureRange = $("#daterange-btn2 span").html();
   
    localStorage.setItem("captureRange2", captureRange);
    console.log("localStorage", localStorage);

    window.location = "index.php?route=reports&initialDate="+initialDate+"&finalDate="+finalDate;

  }

)

/*=============================================
CANCEL DATES RANGE
=============================================*/

$(".daterangepicker.opensright .range_inputs .cancelBtn").on("click", function(){

  localStorage.removeItem("captureRange2");
  localStorage.clear();
  window.location = "sales";
})

/*=============================================
CAPTURE TODAY'S BUTTON
=============================================*/

$(".daterangepicker.opensright .ranges li").on("click", function(){

  var todayButton = $(this).attr("data-range-key");

  if(todayButton == "Today"){

    var d = new Date();
    
    var day = d.getDate();
    var month= d.getMonth()+1;
    var year = d.getFullYear();

    if(month < 10){

      var initialDate = year+"-0"+month+"-"+day;
      var finalDate = year+"-0"+month+"-"+day;

    }else if(day < 10){

      var initialDate = year+"-"+month+"-0"+day;
      var finalDate = year+"-"+month+"-0"+day;

    }else if(month < 10 && day < 10){

      var initialDate = year+"-0"+month+"-0"+day;
      var finalDate = year+"-0"+month+"-0"+day;

    }else{

      var initialDate = year+"-"+month+"-"+day;
        var finalDate = year+"-"+month+"-"+day;

    } 

      localStorage.setItem("captureRange2", "Today");

      window.location = "index.php?route=sales&initialDate="+initialDate+"&finalDate="+finalDate;

  }

})+
            </script>
           
