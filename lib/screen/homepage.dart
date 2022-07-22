import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:gadgetsnepal/screen/featured_product.dart';
import 'package:gadgetsnepal/screen/login.dart';
import 'package:gadgetsnepal/screen/product_list.dart';
import 'package:gadgetsnepal/widgets/products_widget.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  bool homecolor = false;
  bool cartcolor = false;
  bool contactcolor = false;
  bool aboutcolor = false;
  bool logoutcolor = false;

  Widget _buildproductcategory(String image) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        maxRadius: 45,
        backgroundColor: Colors.lightBlue,
        child: Image(image: AssetImage(image)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _key,
      drawer: Drawer(
          child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Rijan Kunwar'),
            accountEmail: Text('Rijan_Kunwar@gmail.com'),
            currentAccountPicture: CircleAvatar(
              maxRadius: 45,
              backgroundImage: AssetImage('assets/rijan.jpg'),
            ),
          ),
          ListTile(
            selected: homecolor,
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              'Home',
              style: TextStyle(letterSpacing: 1.0),
            ),
            onTap: () {
              setState(() {
                homecolor = true;
                cartcolor = false;
                contactcolor = false;
                aboutcolor = false;
                logoutcolor = false;
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          ListTile(
            selected: cartcolor,
            onTap: () {
              setState(() {
                homecolor = false;
                cartcolor = true;
                contactcolor = false;
                aboutcolor = false;
                logoutcolor = false;
              });
            },
            leading: const Icon(Icons.shopping_cart),
            title: const Text(
              'Cart',
              style: TextStyle(letterSpacing: 1.0),
            ),
          ),
          ListTile(
            selected: contactcolor,
            onTap: () {
              setState(() {
                homecolor = false;
                cartcolor = false;
                contactcolor = true;
                aboutcolor = false;
                logoutcolor = false;
              });
            },
            leading: const Icon(Icons.phone),
            title: const Text(
              'Contact us',
              style: TextStyle(letterSpacing: 1.0),
            ),
          ),
          ListTile(
            selected: aboutcolor,
            onTap: () {
              setState(() {
                homecolor = false;
                cartcolor = false;
                contactcolor = false;
                aboutcolor = true;
                logoutcolor = false;
              });
            },
            leading: const Icon(Icons.info),
            title: const Text(
              'About',
              style: TextStyle(letterSpacing: 1.0),
            ),
          ),
          ListTile(
            selected: logoutcolor,
            leading: const Icon(Icons.logout),
            title: const Text(
              'Log out',
              style: TextStyle(letterSpacing: 1.0),
            ),
            onTap: () {
              setState(() {
                homecolor = false;
                cartcolor = false;
                contactcolor = false;
                aboutcolor = false;
                logoutcolor = true;
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
            },
          ),
        ],
      )),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: CarouselSlider(
                    enableAutoSlider: true,
                    unlimitedMode: true,
                    autoSliderDelay: const Duration(seconds: 5),
                    slideIndicator: CircularSlideIndicator(
                        indicatorBackgroundColor: Colors.white,
                        currentIndicatorColor: Colors.blue,
                        indicatorBorderColor: Colors.grey),
                    children: [
                      Image.asset(
                        'assets/hp.jpg',
                        fit: BoxFit.fill,
                      ),
                      Image.asset(
                        'assets/iphone.jpg',
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                // Container(
                //     margin: const EdgeInsets.symmetric(vertical: 10.0),
                //     height: 50,
                //     width: double.infinity,
                //     child: TextFormField(
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(30.0)),
                //         hintText: 'Search Something',
                //         suffixIcon: const Icon(Icons.search),
                //       ),
                //     )),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const FeaturedProduct(name: 'feature'),
                          ));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Product(
                        amount: 2000,
                        image: 'assets/hp.jpg',
                        text: 'Hp notebook'),
                    Product(
                        amount: 40000,
                        image: 'assets/iphone.jpg',
                        text: 'Iphone 13 pro max'),
                  ],
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildproductcategory('assets/icon/laptop.png'),
                      _buildproductcategory('assets/icon/mobile.png'),
                      _buildproductcategory('assets/icon/watch.png'),
                      _buildproductcategory('assets/icon/listening.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Archives',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProductList(name: 'Archive'),
                              ));
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: const [
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
                Row(
                  children: const [
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
              ],
            ),
          )),
    ));
  }
}
