// Product class
class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

class Category {
  final String name;
  final String backgroundImage; 
  final List<Product> products;

  Category({
    required this.name,
    required this.backgroundImage, 
    required this.products,
  });
}
