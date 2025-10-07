import 'package:flutter_app/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<Product> allProducts = [
  Product(id: '1', title: 'Groovy Shorts', price: 12, image: 'providers/shorts.png'),
  Product(id: '2', title: 'Karati Kit', price: 34, image: 'providers/karati.png'),
  Product(id: '3', title: 'Denim Jeans', price: 54, image: 'providers/jeans.png'),
  Product(id: '4', title: 'Red Backpack', price: 14, image: 'providers/backpack.png'),
  Product(id: '5', title: 'Drum & Sticks', price: 29, image: 'providers/drum.png'),
  Product(id: '6', title: 'Blue Suitcase', price: 44, image: 'providers/suitcase.png'),
  Product(id: '7', title: 'Roller Skates', price: 52, image: 'providers/skates.png'),
  Product(id: '8', title: 'Electric Guitar', price: 79, image: 'providers/guitar.png')
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 50).toList();
});