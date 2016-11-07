package scodingchallenge
import scodingchallenge.Transactions

class TransactionsController {

    def index() {
   		def currentAccount = params.name;
 		
 		def paidfrom = Transactions.findAllByReceiveFrom(currentAccount);
   		def paidTo = Transactions.findAllBySendTo(currentAccount);
	   
        [paiedTo: paidTo, paiedfrom: paidfrom]
    }

}
