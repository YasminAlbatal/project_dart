import 'Cart.dart';

class User {
  String name;
  Cart cart;

  User(this.name) : cart = Cart();

// display data of user
  void printUserInfo() {
    print("________info________");
    print('User: $name');
    cart.printCart();
    print('Total Price: ${cart.totalPrice()}');
  }
}
