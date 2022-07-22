import 'package:flutter/material.dart';
import 'package:gadgetsnepal/screen/homepage.dart';
import 'package:gadgetsnepal/widgets/products_widget.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({Key? key, required String name}) : super(key: key);

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
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
              width: double.infinity,
              child: Text(
                'Featured',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 560,
              child: GridView.count(
                crossAxisSpacing: 4,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                scrollDirection: Axis.vertical,
                children: const <Widget>[
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 40000,
                      image: 'assets/iphone.jpg',
                      text: 'Iphone 13 pro max'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                  Product(
                      amount: 2000,
                      image: 'assets/hp.jpg',
                      text: 'Hp notebook'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
