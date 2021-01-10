import 'package:flutter/material.dart';
import 'package:joshaba/bcommerce/src/ui/body.dart';
import 'package:joshaba/bcommerce/src/ui/widgets/Drawerfile.dart';

class BcommerceScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BcommerceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        title: Image.asset(
          'assets/images.jpg',
          // height: MediaQuery.of(context).size.height / 2,
          // width: MediaQuery.of(context).size.width / 4,
          height: 50,
          width: 500,
        ),
        actions: <Widget>[
          Icon(
            Icons.notifications,
            size: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Drawerfile(),
      ),
      body: Body(),
    );
  }
}
