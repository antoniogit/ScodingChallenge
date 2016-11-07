package scodingchallenge

class AccountController {

     def index() {
     	System.out.println(Account.count())
        def accounts = Account.list()
        [accounts:accounts]
    }
}
