import 'package:flutter/material.dart';

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
  ];

  Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        scrollDirection: Axis.vertical,
        children: productlist.map((e) {
          return Card(
              elevation: 5.0,
              child: SizedBox(
                height: 200,
                width: 180,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e.productimage))),
                    ),
                    Text(
                      'RS.${e.productprice}',
                      style: const TextStyle(
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Text(
                      e.productname,
                      style: const TextStyle(
                          letterSpacing: 1.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ));
        }).toList());
  }
}
