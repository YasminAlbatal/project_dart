import 'BankAccount.dart';

void main() {
  Bankaccount account1 = Bankaccount('123456', 'Alice Smith', 500.0);

  account1.printAccountInfo();
//change balance
  account1.balance(700.0);

  account1.accountNumber('1234567');

  account1.printAccountInfo();

  account1.deposit(200.0);

  account1.withdraw(100.0);

  account1.printAccountInfo();
}
