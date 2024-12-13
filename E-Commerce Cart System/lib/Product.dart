class Product {
  String name;
  double price;
//constructor
  Product({required this.name, required this.price});

// return map of items;
  Map<String, double> product() {
    return {this.name.toLowerCase(): this.price};
  }
}
