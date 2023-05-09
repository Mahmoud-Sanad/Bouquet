import 'package:bouquetproject/Menu.dart';
import 'package:bouquetproject/home.dart';
import 'package:bouquetproject/menu_NotLogged.dart';
import 'package:flutter/material.dart';
import 'package:bouquetproject/main.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logged? Menu():Menu_NotLogged(),
      appBar: AppBar(
          title: Text(
            "Bouquet",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                        (Route<dynamic> route) => false,
                  );

                },
                icon: Icon(
                  Icons.home,
                  size: 35,
                  color: Color.fromRGBO(142, 99, 93, 1),
                )),
            SizedBox(
              width: 30,
            ),
            Builder(builder: (BuildContext context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    size: 35,
                    color: Color.fromRGBO(142, 99, 93, 1),
                  ));
            }),
            SizedBox(
              width: 10,
            )
          ],
          backgroundColor: Colors.white,
          leading: Row(children: [
            Icon(
              Icons.grass_sharp,
              size: 35,
              color: Color.fromRGBO(142, 99, 93, 1),
            )
          ])),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                width: double.infinity,
                height: 150,
                color: Color.fromRGBO(169, 120, 113, 1),
                child: Text(
                  "Basket",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              width: double.infinity,
              child: Text("Basket Items",
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 25)),
            ),
            Divider(
              endIndent: 16,
              indent: 16,
              color: Colors.grey,
            ),
            Row(

              children: [
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text("Thumbnail",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center),
                  color: Color.fromRGBO(142, 99, 93, 1),
                  height: 40,
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text("Name",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center),
                  color: Color.fromRGBO(142, 99, 93, 1),
                  height: 40,
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text("Price",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center),
                  color: Color.fromRGBO(142, 99, 93, 1),
                  height: 40,
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text("Quantity",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center),
                  color: Color.fromRGBO(142, 99, 93, 1),
                  height: 40,
                )),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        child: Image(
                          image: AssetImage("images/10-1.jpg"),
                          width: 80,
                        ))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.center,
                        child: Text("La Fleurel"))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center, child: Text("922 \$"))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        alignment: Alignment.center,
                        child: Text("1")))
              ],
            ),
            Divider(color: Colors.grey[400], endIndent: 16, indent: 16),
            Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        child: Image(
                          image: AssetImage("images/fl2.png"),
                          width: 80,
                        ))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.center,
                        child: Text("Pinky"))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center, child: Text("1100 \$"))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        alignment: Alignment.center,
                        child: Text("1")))
              ],
            ),
            Divider(color: Colors.grey[400], endIndent: 16, indent: 16),
            Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        child: Image(
                          image: AssetImage("images/6-list.jpg"),
                          width: 80,
                        ))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                        alignment: Alignment.center,
                        child: Text(
                          "Sweet Succulent",
                          overflow: TextOverflow.ellipsis,
                        ))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center, child: Text("650 \$"))),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        alignment: Alignment.center,
                        child: Text("1")))
              ],
            ),
            Divider(color: Colors.grey[400], endIndent: 16, indent: 16),
            SizedBox(
              height: 50,
            ),
            Text(
              "Basket Totals",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Total",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                )),
                Expanded(
                    child: Text("2672 \$",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
              ],
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                height: 35,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Place Order",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(50, 50, 50, 1))))),
            SizedBox(height: 40,),
            Divider(color: Color.fromRGBO(128, 128,128, 0.7),),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text(
                      "Our Contact",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("location"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("s@gmail.com"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("0115513455")
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  children: [
                    Text("Information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("about us"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("contact us"),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
