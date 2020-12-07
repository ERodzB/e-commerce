<?php
require_once 'vendor/libPaypal/autoload.php';

function getApiContext()
{
    $apiContext = new \PayPal\Rest\ApiContext(
        new \PayPal\Auth\OAuthTokenCredential(
            'AcMtYHz77uCGMBA6LaLaUeam5RsXj0B1qdB9m8_S9sY5DYPXWX2YJdaQBym1ibIQON0GQAc_rttzMkWI',     // ClientID
            'ELLoUsCAQZz1FuXZsFNvyQqSnfiI9E6Krs86Cnxcc8WKBpFXwlV0qMDClZv4tXe2t7D87F9ortdt-YHz'      // ClientSecret
        )
    );
    return $apiContext;
}
function createPaypalTransacction($products, $subtotal,$shipping,$total)
{
    $apiContext = getApiContext();
    $payer = new \PayPal\Api\Payer();
    $payer->setPaymentMethod('paypal');

    $items = new \PayPal\Api\ItemList();
    foreach ($products as $products) {
        $item = new \PayPal\Api\Item();
        $item->setSku($products["prdCod"]);
        $item->setName($products["prdDscES"]);
        $item->setQuantity($products["cartQuantity"]);
        $item->setPrice($products["prdPrice"]);
        $item->setCurrency('USD');
        $items->addItem($item);
    }
    $details = new \PayPal\Api\Details();
    $details->setSubtotal($subtotal);
    $details->setShipping($shipping);

    $amount = new \PayPal\Api\Amount();
    $amount->setDetails($details);
    $amount->setTotal(strval($total));
    $amount->setCurrency('USD');

    $transaction = new \PayPal\Api\Transaction();
    $transaction->setAmount($amount);
    $transaction->setNoteToPayee("Venta de comida de la empresa eCommerce");
    $transaction->setItemList($items);

    $redirectUrls = new \PayPal\Api\RedirectUrls();

    $redirectUrls
        ->setReturnUrl($_SERVER["SERVER_MVC"]."index.php?page=Approved")
        ->setCancelUrl($_SERVER["SERVER_MVC"]."index.php?page=Canceled");

    $payment = new \PayPal\Api\Payment();
    $payment->setIntent('sale')
        ->setPayer($payer)
        ->setTransactions(array($transaction))
        ->setRedirectUrls($redirectUrls);

    try {
        $payment->create($apiContext);
        $_SESSION["paypalTrans"] = $payment;
        return $payment->getApprovalLink();
    } catch (\PayPal\Exception\PayPalConnectionException $ex) {
        // This will print the detailed information on the exception.
        //REALLY HELPFUL FOR DEBUGGING
        error_log($ex->getData());
        return false;
    }
}

?>
