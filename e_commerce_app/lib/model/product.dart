import 'dart:convert';

List<Product> popularProductListFromJson(String value) =>
    List<Product>.from(json
        .decode(value)['data']
        .map((product) => Product.popularProductFromJson(product)));

class Product {
  final int id;
  final String name;
  final String description;
  final List<String> images;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
  });

  factory Product.popularProductFromJson(Map<String, dynamic> data) => Product(
      id: data['id'],
      name: data['attributes']['product']['data']['attributes']['name'],
      description: data['attributes']['product']['data']['attributes']
          ['description'],
      images: List<String>.from(data['attributes']['product']['data']
              ['attributes']['images']['data']
          .map((image) => image['attributes']['url'])));
}
