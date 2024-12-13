import 'Product.dart';

class Cart {
  Map<String, double> Products = {};
  //add item to the cart
  void addItem(Product item) {
    Products.addAll(item.product());
    print("${item.name} has been added to cart.");
  }
//remove the item by its name
  void removeItem(String name) {
    if (Products.containsKey(name.toLowerCase())) {
      Products.remove(name.toLowerCase());
      print("$name removed from cart.");
    } else
      print("this name is not found");
  }
// display cart
  void printCart() {
    if (Products.isEmpty)
      print("The cart is empty.");
    else {
      print("Cart contents:");
      Products.forEach(
        (key, value) {
          print(' $key :$value');
        },
      );
      print('\n');
    }
  }
// Calculates Total Price
  double totalPrice() {
    double total = 0;
    for (var element in Products.values) {
      total += element;
    }
    return total;
  }
}
