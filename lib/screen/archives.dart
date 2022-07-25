import 'package:flutter/material.dart';
import 'package:gadgetsnepal/screen/homepage.dart';
import 'package:gadgetsnepal/widgets/products_list.dart';

class ArchivesProduct extends StatefulWidget {
  const ArchivesProduct({Key? key}) : super(key: key);

  @override
  State<ArchivesProduct> createState() => _ArchivesProductState();
}

class _ArchivesProductState extends State<ArchivesProduct> {
  Icon cusIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget searchbar = SizedBox(
    height: 40,
    child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Search Something',
        suffixIcon: const Icon(Icons.search),
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );

  Widget text = const Text(
    'Archives',
    style: TextStyle(color: Colors.transparent),
  );
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
        title: text,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (cusIcon.icon == Icons.search) {
                  cusIcon = const Icon(
                    Icons.cancel,
                    color: Colors.black,
                  );
                  text = searchbar;
                } else {
                  cusIcon = const Icon(
                    Icons.search,
                    color: Colors.black,
                  );
                  text = const Text(
                    'Archives',
                    style: TextStyle(color: Colors.transparent),
                  );
                }
              });
            },
            icon: cusIcon,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        child: Product(),
      ),
    );
  }
}
