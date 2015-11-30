<?php 

class BankAccount {
	private $number = 123456;
	public  $owner  = "Pacho";
	private $balance = 1000000;

	public function getLastNumbers() {
		return $this->number%1000;
    }
    private function _withdrawAmount($amount) {
	    $this->balance = $this->balance - $amount;
    }
}

$account = new BankAccount();

echo $account->getLastNumbers();
$account->_withdrawAmount(500000);

?>
