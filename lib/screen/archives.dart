import 'package:flutter/material.dart';
import 'package:gadgetsnepal/model/products.dart';
import 'package:gadgetsnepal/screen/homepage.dart';
import 'package:gadgetsnepal/widgets/products_widget.dart';

class ArchivesProduct extends StatelessWidget {
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

  ArchivesProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Product(),
      ),
    );
  }
}
