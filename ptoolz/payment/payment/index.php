<?php
// ob_start();
// error_reporting(0);
// ini_set('display_errors', 0);
// error(true);
include 'header.php'; ?>

<?php include '../function.php';
error(true);

include '../security-ajax.php';
$conn = db($db);
$amount = 0;
$status = 0;
$data  =  [];

//
// if ($_SERVER['REQUEST_METHOD'] == 'POST' &&  isset($_POST['quotationId'])) {
  if ($_SERVER['REQUEST_METHOD'] == 'GET' &&  isset($_GET['quotationId'])) {
      echo $_GET['quotationId'];
  // $quotationId = filter_var($_POST['quotationId'], FILTER_SANITIZE_STRING);
  $quotationId = filter_var($_GET['quotationId'], FILTER_SANITIZE_STRING);
  $getSptIdOfQuotation =  getSptIdOfQuotation($quotationId);
  $orderId = $getSptIdOfQuotation['orderId'];
  $userAccountId =  getUserAccountIdOfOrder($orderId);


  $orderInfo = getOrderInfo($quotationId,1);
  $totalCost = $orderInfo['cost'];


  $getBalance = getBalance($userAccountId, 1);
  // $getBalance = json_encode(getBalance($userAccountId, 1));

  $balance = $getBalance['balance'];

  if ($balance > $totalCost) {
     $acceptQutation =  acceptQutation($quotationId);
     $status = 200;
  } else {
    $amount =  $balance - $totalCost;
    $status = 100;
     $amount=  abs($amount) ;
     $amount = $amount * 100 ;
    //  echo  $amount = floatval( $amount);
    // int $amount;
    // $amount = (float) $amount;


  }

  // echo $status;

  if ($status == 100) {
     $userAccount = getInfoAccount('customerAccount', $userAccountId);
      $customer_email = $userAccount['email'];
      $mobile = $userAccount['mobile'];
      $fullName = $userAccount['fullName'];

    $merchant_reference = 're-' . $totalCost . '-pid-' . $pid . '-recharge-' . $userAccountId;
    $requestParams = array(
      'command' => 'PURCHASE',
      'access_code' => $access_code,
      'merchant_identifier' => $merchant_identifier,
      'merchant_reference' => $merchant_reference,
      'amount' => $amount,
      'currency' => $currency,
      'language' => $language,
      'customer_email' => $customer_email,
      'return_url' => $return_url,
    );

    ksort($requestParams);
    foreach ($requestParams as $key => $value) {
      $shaString .= "$key=$value";
    }
    $shaString = $hash . $shaString . $hash;
    $signature = hash("sha256", $shaString); ?>

    <div class="type-effect">
  <div class="text" id="type-text"></div>
</div>
<div class="row">
                    <div class="col-12 p-5">
                        <img src="https://cdn.dribbble.com/users/1281958/screenshots/4862251/waiting-for-pay.gif" width="260px" alt="">
                    </div>
                </div>
    <form method="post" action="<?= $redirectUrl ?>" id="form1" name="form1">
      <input type="hidden" name="signature" value="<?= $signature ?>">
      <input type="hidden" name="command" value="PURCHASE">
      <input type="hidden" name="merchant_reference" value="<?= $merchant_reference ?>">
      <input type="hidden" name="amount" value="<?= $amount ?>">
      <input type="hidden" name="access_code" value="<?= $access_code ?>">
      <input type="hidden" name="merchant_identifier" value="<?= $merchant_identifier ?>">
      <input type="hidden" name="currency" value="<?= $currency ?>">
      <input type="hidden" name="language" value="<?= $language ?>">
      <input type="hidden" name="customer_email" value="<?= $customer_email ?>">
      <input type="hidden" name="return_url" value="<?= $return_url ?>">
      <div class="alert alert-primary" role="alert">
        إصغط هنا للشحن
        <input type="submit" class="btn btn-success" value="" id="" name="">
      </div>
    </form>

  <?php
  }
}else { ?>
  <section id="hero" class="d-flex align-items-center">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
        <h1> Hi </h1>
        <h2>Please verify that the data is correct or contact technical support</h2>
      </div>
      <div class="col-lg-6 order-1 order-lg-2 hero-img aos-init aos-animate" data-aos="zoom-in" data-aos-delay="200"> <img src="https://cdn.dribbble.com/users/2469324/screenshots/6538803/comp_3.gif" class="img-fluid animated" alt=""></div>
    </div>
  </div>
</section>
<?php } if ($status == 200) { ?>

  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
          <h1> Hi , <?=$fullName?> </h1>
          <h2> The amount has been successfully deducted from your account and the savings have been accepted.</h2>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img aos-init aos-animate" data-aos="zoom-in" data-aos-delay="200"> <img src="https://i.pinimg.com/originals/0d/e4/1a/0de41a3c5953fba1755ebd416ec109dd.gif" class="img-fluid animated" alt=""></div>
      </div>
    </div>
  </section>
<?php  }
include 'footer.php';
// ob_end_flush();
?>





<!--

<?php

namespace App\Http\Controllers\payment;

use App\Models\offer\offer;
use Illuminate\Http\Request;
use App\Models\users\customer;
use App\Http\Controllers\Controller;

class paymentController extends Controller
{
    public  function index(offer $offer){
        $user = customer::find(Auth('sanctum')->user()->id);
         $totalCost = offerCost($offer);

         $userBalance  =  $user->currentBalance();

        if ($userBalance >= $totalCost) {
        //    $acceptQutation =  acceptQutation($quotationId);
           $status = 200;
        } else {
        //   $amount =  $userBalance - $totalCost;
           $status = 100;
        //    $amount=  abs($amount) ;
        //    $amount = $amount * 100 ;
          //  echo  $amount = floatval( $amount);
          // int $amount;
          // $amount = (float) $amount;

          $amount = 1000;

        }
        if ($status == 100) {
        // $data = merchant_helper();
$shaString  = null;
$hash = '95KohPnRfsjEPbpKJX.C/P?#';
$merchant_identifier = 'e4fcb656';
$access_code = 'QQi6751LuIjYztnRGMWI';
$currency ='SAR';
$language = 'ar';
$return_url = 'https://www.ptoolz.com/webAPI/Controller/payment/process.php?status=payment';
$redirectUrl = 'https://sbcheckout.PayFort.com/FortAPI/paymentPage';

          $merchant_reference = 're-' . $totalCost . '-pid-' . $offer->id . '-recharge-' . $user->id;
          $requestParams = array(
            'command' => 'PURCHASE',
            'access_code' => $access_code,
            'merchant_identifier' =>$merchant_identifier,
            'merchant_reference' => $merchant_reference,
            'amount' => $amount,
            'currency' =>$currency,
            'language' => $language,
            'customer_email' => $user->email,
            'return_url' =>$return_url,
          );
          ksort($requestParams);
          foreach ($requestParams as $key => $value) {
           $shaString .= "$key=$value";
          }
          $shaString =$hash . $shaString .$hash;
          $signature = hash("sha256", $shaString);

        //   dd($shaString);
          return view('payment.index' , [ 'user'=>$user , 'amount'=>$amount , 'signature'=>$signature , 'merchant_reference'=>$merchant_reference ]);




        }


        // echo $status;

    }
}

 -->


 <?php
$hash = '95KohPnRfsjEPbpKJX.C/P?#';
$merchant_identifier = 'e4fcb656';
$access_code = 'QQi6751LuIjYztnRGMWI';
$currency ='SAR';
$language = 'ar';
$return_url = 'https://www.ptoolz.com/webAPI/Controller/payment/process.php?status=payment';
$redirectUrl = 'https://sbcheckout.PayFort.com/FortAPI/paymentPage';
?>
<div class="type-effect">
        <div class="text" id="type-text"></div>
      </div>
      <div class="row">
            <div class="col-12 p-5">
                <img src="https://cdn.dribbble.com/users/1281958/screenshots/4862251/waiting-for-pay.gif" width="260px" alt="">
            </div>
        </div>
          <form method="post" action="{{$redirectUrl}}" id="form1" name="form1">
            <input type="hidden" name="signature" value="{{   $signature }}">
            <input type="hidden" name="command" value="PURCHASE">
            <input type="hidden" name="merchant_reference" value="{{   $merchant_reference }}">
            <input type="hidden" name="amount" value="{{   $amount }}">
            <input type="hidden" name="access_code" value ="{{ $access_code }}">
            <input type="hidden" name="merchant_identifier" value="{{   $merchant_identifier }}">
            <input type="hidden" name="currency" value="{{   $currency }}">
            <input type="hidden" name="language" value="{{   $language }}">
            <input type="hidden" name="customer_email" value="{{   $user['email'] }}">
            <input type="hidden" name="return_url" value="{{   $return_url }}">
            <div class="alert alert-primary" role="alert">
              إصغط هنا للشحن
              <input type="submit" class="btn btn-success" value="" id="" name="">
            </div>
          </form>
