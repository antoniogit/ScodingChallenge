package scodingchallenge

class PayController {

    def index() { 
    	
    	def accountNames = Account.list()
        [account:  accountNames.name]
   }
    def g_Inbox(){

	    def amonunt_to = params.amonunt_to;
	    def amount_from = params.amount_from;
	    def amount_sent = params.amount_sent;

	    def pay_to = Account.findByName(amonunt_to);
	    def pay_from = Account.findByName(amount_from);

	    if(pay_to && pay_from && pay_to != pay_from) {
	    	
		    if(pay_from.balance - amount_sent.toInteger() >= 0) {

			    // the balance of the sender is being updated 
		 		pay_from.balance = pay_from.balance - amount_sent.toInteger();
				pay_from.save(flush:true);

				// the balance of the recipient is updated
				pay_to.balance = pay_to.balance + amount_sent.toInteger();
				pay_to.save(flush:true);

				new Transactions(sendTo: pay_to.name, receiveFrom: pay_from.name, amount: amount_sent).save(flush:true)

				render text: "The transaction was succesfull", contentType: 'text'
			} else {

				render text: "No overdrafts allowed", contentType: 'text'
			}
		} else {
			render text: "Please make sure you have the correct account names", contentType: 'text'
		}
	}

}
