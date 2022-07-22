import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String text;
  final double amount;
  final String image;

  const Product(
      {required this.amount, required this.image, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
      height: 200,
      width: 180,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 160,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          Text(
            'Rs.$amount',
            style: const TextStyle(
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
          Text(
            text,
            style: const TextStyle(
                letterSpacing: 1.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
