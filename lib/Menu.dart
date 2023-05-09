import 'package:bouquetproject/Profile.dart';
import 'package:bouquetproject/cart.dart';
import 'package:bouquetproject/home.dart';
import 'package:bouquetproject/login.dart';
import 'package:bouquetproject/main.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Icon(
              Icons.person,
              size: 90,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(142, 99, 93, 1),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                    (Route<dynamic> route) => false,
              );

            },
          ),
          Divider(height: 10),
          ListTile(
            title: Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
                    (Route<dynamic> route) => false,
              );

            },
          ),
          Divider(height: 10),
          ListTile(
            title: Text(
              'Cart',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
                    (Route<dynamic> route) => false,
              );

            },
          ),
          Divider(height: 10),
          ListTile(
            title: Text(
              'Logout',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              logged = false;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
