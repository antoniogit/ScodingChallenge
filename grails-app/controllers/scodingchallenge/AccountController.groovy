package scodingchallenge

class AccountController {

     def index() {
        def accounts = Account.list()
        [accounts:accounts]
    }
}
