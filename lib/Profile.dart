import 'package:bouquetproject/Menu.dart';
import 'package:bouquetproject/home.dart';
import 'package:bouquetproject/main.dart';
import 'package:bouquetproject/menu_NotLogged.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logged ? Menu() : Menu_NotLogged(),
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
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              color: Color.fromRGBO(142, 99, 93, 1),
              child: Image(image: AssetImage("images/profile.png")),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Account Details",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color.fromRGBO(128, 128, 128, 0.7),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 47,
                ),
                Text(
                  "First Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  "Last Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      child: TextFormField(
                        initialValue: "Mahmoud",
                      ),
                      padding: EdgeInsets.fromLTRB(45, 0, 20, 0)),
                ),
                Expanded(
                    child: Container(
                        child: TextFormField(
                          initialValue: "Sanad",
                        ),
                        padding: EdgeInsets.fromLTRB(45, 0, 20, 0))),
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
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: TextFormField(
                    initialValue: "mahmoud@gmail.com",
                  ),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                ))
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
                Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: TextFormField(
                    initialValue: "01125365894",
                  ),
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                height: 35,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Save Changes",
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
