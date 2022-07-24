import 'package:flutter/material.dart';
import 'package:gadgetsnepal/model/products.dart';
import 'package:gadgetsnepal/screen/homepage.dart';

class FeaturedProduct extends StatelessWidget {
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

  FeaturedProduct({Key? key}) : super(key: key);

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
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
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
            }).toList()),
      ),
    );
  }
}
