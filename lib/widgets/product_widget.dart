import 'package:flutter/material.dart';
import 'package:gadgetsnepal/screen/product_detail.dart';

class ProductWidget extends StatefulWidget {
  final String productname;
  final String productimage;

  const ProductWidget(this.productimage, this.productname, {Key? key})
      : super(key: key);
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  Color _iconcolor = Colors.white;
  Color _iconcolorcart = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    if (_iconcolor == Colors.white) {
                      _iconcolor = Colors.red;
                    } else {
                      _iconcolor = Colors.white;
                    }
                  });
                },
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  color: _iconcolor,
                )),
            title: Text(
              widget.productname,
              style: const TextStyle(
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
              ),
            ),
            trailing: IconButton(
                color: _iconcolorcart,
                onPressed: () {
                  setState(() {
                    if (_iconcolorcart == Colors.white) {
                      _iconcolorcart = Colors.red;
                    } else {
                      _iconcolorcart = Colors.white;
                    }
                  });
                },
                icon: const Icon(
                  Icons.shopping_cart,
                )),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const ProductDetail()));
            },
            child: Image(
              image: AssetImage(widget.productimage),
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
