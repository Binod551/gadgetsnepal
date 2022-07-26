import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:gadgetsnepal/screen/featured_product.dart';
import 'package:gadgetsnepal/screen/login.dart';
import 'package:gadgetsnepal/screen/archives.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  Icon cusIcon = const Icon(
    Icons.search,
    color: Colors.black,
  );
  Widget cusearchbar =
      const Text('Home', style: TextStyle(color: Colors.black));
  late final size = MediaQuery.of(context).size;
  bool homecolor = false;
  bool cartcolor = false;
  bool contactcolor = false;
  bool aboutcolor = false;
  bool logoutcolor = false;

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

  Widget _buildfeatured(String image, String text, double amount) {
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
                    image: DecorationImage(image: AssetImage(image))),
              ),
              Text(
                'RS.$amount}',
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
        title: cusearchbar,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (cusIcon.icon == Icons.search) {
                  cusIcon = const Icon(
                    Icons.cancel,
                    color: Colors.black,
                  );
                  cusearchbar = searchbar;
                } else {
                  cusIcon = const Icon(
                    Icons.search,
                    color: Colors.black,
                  );
                  cusearchbar =
                      const Text('Home', style: TextStyle(color: Colors.black));
                }
              });
            },
            icon: cusIcon,
          ),
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
          height: size.height,
          width: size.width,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.25,
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
                Container(
                  width: size.width,
                  height: size.height * 0.1,
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
                            builder: (context) => FeaturedProduct(),
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
                SizedBox(
                  height: size.height * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildfeatured('assets/hp.jpg', 'hp laptop', 20000),
                      _buildfeatured('assets/iphone.jpg', 'Iphone', 80000),
                      _buildfeatured('assets/iphone.jpg', 'Iphone', 80000),
                      _buildfeatured('assets/hp.jpg', 'hp laptop', 20000),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
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
                  height: size.height * 0.06,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildproductcategory('assets/icon/laptop.png'),
                      _buildproductcategory('assets/icon/mobile.png'),
                      _buildproductcategory('assets/icon/watch.png'),
                      _buildproductcategory('assets/icon/listening.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
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
                                builder: (context) => ArchivesProduct(),
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
                Container(
                  width: size.width,
                  height: size.height * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildfeatured('assets/hp.jpg', 'hp laptop', 20000),
                      _buildfeatured('assets/iphone.jpg', 'Iphone', 80000),
                      _buildfeatured('assets/iphone.jpg', 'Iphone', 80000),
                      _buildfeatured('assets/hp.jpg', 'hp laptop', 20000),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
