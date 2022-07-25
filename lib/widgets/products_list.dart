import 'package:flutter/material.dart';
import 'package:gadgetsnepal/widgets/product_widget.dart';

import '../model/products.dart';

class Product extends StatelessWidget {
  final List<ProductList> productlist = [
    ProductList(
        productname: 'Hp Laptop',
        productprice: 20000,
        productimage: 'assets/hp.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
    ProductList(
        productname: 'Iphone',
        productprice: 80000,
        productimage: 'assets/iphone.jpg'),
  ];

  Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: productlist.length,
      itemBuilder: (BuildContext context, int i) {
        return ProductWidget(
            productlist[i].productimage, productlist[i].productname);
      },
    );
  }
}
