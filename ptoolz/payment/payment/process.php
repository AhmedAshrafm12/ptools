<?php
error_reporting(0);
ini_set('display_errors', 0);
include 'header.php';
include '../function.php';
$errr = false;
if(isset($_GET['status'])){
    $processMerchantPageResponse =  processMerchantPageResponse() ;
       $message =$processMerchantPageResponse['message'] ;
       $response_code =$processMerchantPageResponse['response_code'] ;
       $statusAPI =$processMerchantPageResponse['statusAPI'] ;
       $statusWEB =$processMerchantPageResponse['statusWEB'] ;
       $amount =$processMerchantPageResponse['amount'] ;
       $merchantReference =$processMerchantPageResponse['merchantReference'] ;
       $userAccountId =  strstr($merchantReference,"-recharge-");
       $pid =  strstr($merchantReference,"-pid-");
       $pid =  str_replace('-pid-', '' ,$pid);
       $pid = explode("-recharge-", $pid);
       $pid =  $pid[1] ;
       $getSptIdOfQuotation =  getSptIdOfQuotation($pid);

       $orderId = $getSptIdOfQuotation['orderId'];
       $userAccountId =  getUserAccountIdOfOrder($orderId);
       $userAccount = getInfoAccount('customerAccount', $userAccountId);
       $customer_email = $userAccount['email'];
       $mobile = $userAccount['mobile'];
       $fullName = $userAccount['fullName'];
       $userName = $userAccount['userName'];
 
         $url_send = 'https://ptoolz.com/Controller/transactions/_AcceptAndHoldTransaction.php';
         $data = array(
            'userId' =>$userAccountId ,
            'quotationId' => $pid,
         ) ;
        $res =  httpPost($url_send, $data) ;

        $search = '-recharge-' ;
        $userAccountId = str_replace($search, '', $userAccountId) ;
       if ($message == 'عملية ناجحة') { 
          $url_send = 'https://ptoolz.com/Controller/transactions/_chargeTransaction.php';
          $data = array(
             'userAccountId' =>$userAccountId ,
             'cost' => $amount,
          ) ;
         $res =  httpPost($url_send, $data) ;
          ?>
          <script> swal("<?=$message?>"); </script>
          <div class="alert alert-success" role="alert"><?=$message?></div>

  <?php  }else { ?>
    <p> <?=$message?> </p>
     <div class="alert alert-danger" role="alert">حدث خطأ حاول مرة أخرى ..</div>
       <script> swal("حدث خطأ حاول مرة أخرى .. "); </script>
    <?php }
    }
        ?>
    <div class="card">
      <div class="card-body mx-4">
        <div class="container">
          <p class="my-5 mx-5" style="font-size: 30px;">Thank you for your reservation. Booked!</p>
          <div class="row">
            <ul class="list-unstyled">
              <li class="text-black"><?= $fullName ?></li>
              <li class="text-muted mt-1"><span class="text-black">Invoice</span> #<?= $pid ?></li>
              <li class="text-black mt-1"><?= date('now')?></li>
            </ul>
            <hr>
            <div class="col-xl-10">
              <p>Price</p>
            </div>
            <div class="col-xl-2">
              <p class="float-end"> <?= $amount ?>
              </p>
            </div>
            <hr>
          </div>
          <div class="row">
            <div class="col-xl-10">
              <p>Booking price  %</p>
            </div>
            <div class="col-xl-2">
              <p class="float-end"><?= $amount ?>
              </p>
            </div>
            <hr>
          </div>

          <div class="row text-black">

            <div class="col-xl-12">
              <p class="float-end fw-bold">Total: <?= $amount ?>
              </p>
            </div>
            <hr style="border: 2px solid black;">
          </div>
          <div class="text-center" style="margin-top: 90px;">
            <p>After payment, please close the page and take a screenshot of the bill . </p>
          </div>

        </div>
      </div>
    </div>
  <?php   include 'footer.php'; ?>
