// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'placeorder.dart';
import 'search.dart';
import 'dart:math';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
   _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  TextEditingController textController = TextEditingController();
  bool isVegetarian = false;
  bool isNonVegetarian = false;

  @override
  Size get preferredSize => Size.fromHeight(34);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
          backgroundColor: Colors.purple,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Colors.purple,
                    Colors.purple,
                    Colors.purple,
                  ]
                )
              ),
              // set your color
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Dashboard()),
                              );
                            },
                            icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                        Spacer(),
                        Text("PediaSure Products",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Colors.black54, blurRadius: 10)
        ]),
        child: BottomAppBar(
          color: Colors.purple,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'Abbott Product Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )),
        ),
      ),
      body:SingleChildScrollView(
      child:SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.80,
        child:Column(
          children:[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
  text: TextSpan(
    text: 'Benefits:\n',
    style: TextStyle(fontWeight: FontWeight.bold),
    children: [
      TextSpan(
        text: '1. It has 37 essential nutrients along with added arginine and Vitamin K2\n',
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      TextSpan(
        text: '2. PEDIASURE WHEN USED FOR 90 DAYS, IT REDUCES THE RISK OF INFECTION BY 50 %,\n',
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      TextSpan(
        text: '3. INCREASES HEIGHT & WEIGHT,\n',
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      TextSpan(
        text: '4. ALSO IMPROVES IMMUNITY AND HELPS IN BRAIN DEVELOPMENT,\n',
        style: TextStyle(fontWeight: FontWeight.normal),
      ), 
      TextSpan(
        text: 'Dosage: 5 tbsps. (45.5gm) with 190ml water twice or 2 tbsps. with 150ml milk twice a day.',
        style: TextStyle(fontWeight: FontWeight.normal),
      ), 
    ],
  ),
)

            ]),
            ),

      ],
          ),
      ),
    )
    );
  }
}
