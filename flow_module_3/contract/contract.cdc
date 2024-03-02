pub contract holdership {

    pub var holders: {Address: Details}
    
    pub struct Details {
        pub let name: String
        pub let carname: String
        pub let modelno: String
        pub let year: Int
        pub let account: Address

        init(_name: String, _carname: String, _modelno: String, _year:Int, _account: Address) {
            self.name = _name
            self.carname = _carname
            self.modelno = _modelno
            self.year = _year 
            self.account = _account
        }
    }

    pub fun addholder(name: String, carname: String, modelno: String, year: Int , account: Address) {
        let newone = Details(_name: name, _carname: carname, _modelno: modelno, _year: year, _account: account)
        self.holders[account] = newone
    }

    init() {
        self.holders = {}
    }

}


reference and getters 