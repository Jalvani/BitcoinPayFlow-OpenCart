<h2><?php echo $text_instruction; ?></h2>
<p><?php echo $text_payment; ?></p>
<div class="buttons">
  <div class="right"><a id="button-confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>
</div>

/* and these bits too could I change it to jquery*/
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'GET',
		url: 'index.php?route=payment/bitcoinpayflow/confirm',

/*this returns https://bitcoinpayflow.com/orders0.0000
Array ( [order] => Array ( [bitcoin_address] => 1DsKZJARRGXecUFeXtPg7rMQ4LzF3Yk1vg ) )*/
		

			success: function() {
			location = '<?php echo $continue; 
//echo "?btcaddress=$comment" ?>';
		}		
	});
});
//--></script> 
