class Product {
  final String name;
  final String price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> demoProducts = [
  Product(
    name: 'طرحة حمراء',
    price: '\$5',
    imageUrl: 'assets/images/red_hijab.png',
  ),
  Product(
    name: 'طرحة بيضاء',
    price: '\$5',
    imageUrl: 'assets/images/white_hijab.png',
  ),
  Product(
    name: 'مجموعة الاختان',
    price: '\$5',
    imageUrl: 'assets/images/mix_hijab.png',
  ),
];
