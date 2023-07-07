import 'package:e_commerce_app/view/home/components/popular_product/popular_product_card.dart';
import 'package:flutter/material.dart';

import '../../../../model/product.dart';

class PopularProduct extends StatelessWidget {
  final List<Product> popularProducts;

  const PopularProduct({super.key, required this.popularProducts});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: popularProducts.length,
          itemBuilder: (context, index) => PopularProductCard(product: popularProducts[index])),
    );
  }
}