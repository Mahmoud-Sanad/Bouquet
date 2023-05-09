import 'package:bouquetproject/Menu.dart';
import 'package:bouquetproject/cart.dart';
import 'package:bouquetproject/menu_NotLogged.dart';
import 'package:flutter/material.dart';
import 'package:bouquetproject/main.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logged? Menu():Menu_NotLogged(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Bouquet",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        leading: Row(children: [
          Icon(
            Icons.grass_sharp,
            size: 35,
            color: Color.fromRGBO(142, 99, 93, 1),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                      (Route<dynamic> route) => false,
                );

              },
              icon: Icon(
                Icons.shopping_cart,
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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(children: [
              Expanded(child: Image(image: AssetImage("images/flower.2Edited.jpg"), ))
            ]),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Most Selling Items",
                    style: TextStyle(
                        color: Color.fromRGBO(142, 99, 93, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ), // Most Selling
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image(image: AssetImage("images/10-1.jpg"), width: 150),
                    Row(
                      children: [
                        Text("La Fleurel "),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("922 EGP")
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/fl2.png"),
                      width: 150,
                    ),
                    Row(
                      children: [
                        Text("Pinky"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("1100 EGP")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image(image: AssetImage("images/6-list.jpg"), width: 150),
                    Row(
                      children: [
                        Text("Sweet Succulent "),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("650 EGP")
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/1212.jpg"),
                      width: 150,
                    ),
                    Row(
                      children: [
                        Text("Internal Love"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("890 EGP")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image(image: AssetImage("images/dd.png"), width: 150),
                    Row(
                      children: [
                        Text("Yellow Lily"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("723 EGP")
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/xx.jpg"),
                      width: 150,
                    ),
                    Row(
                      children: [
                        Text("In My Heart"),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                      ],
                    ),
                    Text("1050 EGP")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("Categories",
                    style: TextStyle(
                        color: Color.fromRGBO(142, 99, 93, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ), // categories
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/after.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/valantine.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/gift.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ann.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ramadan2.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/after.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/valantine.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/gift.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ann.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ramadan2.png"),
                        width: 60,
                        height: 60,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Color.fromRGBO(0, 0,0, 0.4),
            ),
            SizedBox(
              height: 30,
            ),
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // bel tool
                mainAxisAlignment: MainAxisAlignment.center, // bel 3ard
                children: [
                  Image(
                    image: AssetImage("images/facebook.png"),
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage("images/insta.png"),
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage("images/twitter.webp"),
                    width: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage("images/whats.webp"),
                    width: 25,
                  ),
                ],
              ),
              width: double.infinity,
              color: Color.fromRGBO(50, 50, 50, 1),
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
