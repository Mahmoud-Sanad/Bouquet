import 'package:bouquetproject/home.dart';
import 'package:bouquetproject/login.dart';
import 'package:bouquetproject/main.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

          Builder(builder: (BuildContext context) {
            return IconButton(
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
                ));
          }),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage("images/flower.2Edited.jpg")),
            SizedBox(height: 20,),
            Container(

              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,

                    child:
                    Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.start),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: TextField(decoration: InputDecoration(hintText: "Name"),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: TextField(decoration: InputDecoration(hintText: "Phone Number"),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: TextField(decoration: InputDecoration(hintText: "Email"),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: TextField(decoration: InputDecoration(hintText: "Enter your Password"),),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Already Have an Account?"),
                      TextButton(onPressed: (){Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                            (Route<dynamic> route) => false,
                      );}, child: Text("Login"))
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      height: 35,
                      child: OutlinedButton(
                          onPressed: () {
                            logged = true;
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                                  (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(50, 50, 50, 1)))))
                ],
              ),
            ),
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
    ;
  }
}
