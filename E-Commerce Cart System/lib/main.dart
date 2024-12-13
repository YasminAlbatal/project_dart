import 'Product.dart';
import 'User.dart';

void main() {
User john = User('John Doe');
Product phone = Product(name: 'Smartphone',price:  499.99);
Product earphones = Product(name: 'Earphones',price:  29.99);
Product laptop = Product(name: 'Laptop', price: .99);

john.cart.addItem(phone);
john.cart.addItem(earphones);
john.cart.addItem(laptop);

john.printUserInfo();

john.cart.removeItem('Earphones');
john.printUserInfo();
  
}
