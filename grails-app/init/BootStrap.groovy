import scodingchallenge.Account
import scodingchallenge.Transactions

class BootStrap {

 def init = { servletContext ->
        if (Account.count() == 0) {
            new Account(name: 'John', emailAddress: 'John@Doe.com', balance: 200).save()
            new Account(name: 'Jane', emailAddress: 'Jane@Smith.com', balance: 200).save()
            new Account(name: 'Scott', emailAddress: 'Scott@Robinson.com', balance: 200).save()
        }
      
    }
    def destroy = {
    }
}
