class Bankaccount {

  // make variables Private
  String? _accountNumber;
  String? _holderName;
  double? _balance;


  // Constructor
  Bankaccount(this._accountNumber, this._holderName, this._balance);


//setter
  void accountNumber(String number) {
    if (number.isNotEmpty) {
      _accountNumber = number;
    } else {
      print('Holder name cannot be empty!\n');
    }
  }

  set holderName(String name) {
    if (name.isNotEmpty) {
      _holderName = name;
    } else {
      print('Holder name cannot be empty!\n');
    }
  }

   void  balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print('Balance cannot be negative!\n');
    }
  }

//getter
  get AccountNumber => _accountNumber;
  get HolderName => _holderName;
  get Balance => _balance;


//display data
  void printAccountInfo() {
    //use getters to display data
    print('Account Number: $AccountNumber');
    print('Holder Name: $HolderName');
    print('Balance: $Balance');
  }


//deposit method
  void deposit(double number) {
    // use getter to store value
    double newBalance = Balance;

    if (number > 0) {
      newBalance += number;
     //use setter to update value
      balance( newBalance );
      print('Deposited $number successfully.\n');
    } else {
      print('Deposit amount must be positive!\n');
    }
  }


//withdraw method
  void withdraw(double amount) {
    // use getter to store value
    double newBalance = Balance;
    // check the Balance
    if (amount > 0 && amount <= Balance) {
      newBalance -= amount;
      //use setter to update value
      balance(newBalance);

        print('Withdrew $amount successfully.\n');

    }
    else if (amount > Balance) {
      print('Insufficient balance!\n');
    } else {
      print('Withdrawal amount must be positive!\n');
    }
  }
  
}
