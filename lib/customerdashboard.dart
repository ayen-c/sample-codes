import 'package:flutter/material.dart';
import 'feedback.dart';
import 'menu.dart';
import 'ratingDished.dart';
import 'reqbill.dart';
import 'pediasure.dart';
import 'neprolp.dart';
import 'diabetes.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
        height: 40,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Colors.black54, blurRadius: 10)
        ]),
        child: BottomAppBar(
          elevation: 0.0,
          color: Colors.purple,
          child: Align(
            alignment: Alignment.center,
            child: Text('Product & Contact Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                )),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
          color: Colors.purple,
          child:SafeArea(
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  // set your color
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        "Abbott Products",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono'
                        ),
                      ),
                      const Divider(
                        // height: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Colors.white,
                      ),
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                      //       Center(
                      //           child: Text(" 155 Min to Serve  ",
                      //               style: TextStyle(fontSize: 17.0,color: Colors.white, fontFamily: 'RobotoMono'))),
                      //       // ),
                      //       Spacer(),
                      //       const Center(
                      //           child: Text("  5000.00 Rs  ",
                      //               style: TextStyle(fontSize: 17.0,color: Colors.white,fontFamily: 'RobotoMono')))
                      //       // ),
                      //     ]),
                      const SizedBox(height: 15.0),
                      Center(
                          child:Text('Dashboard',style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ))),
                      // set your search bar setting
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Center(
                child:Column(
                children:[
                  Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                              height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/menu.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("PediaSure", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                  Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RequestBill()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:SizedBox(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                            child:Image(
                                  image: new AssetImage("assets/images/requestbill.png"),
                                  width: 80,
                                  height: 80,
                                  color: null,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.center,
                                ),
                                ),
                                Center(
                                  child:Text("PediaSure 7+", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pediasure()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/notification.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("PediaSure Advance", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Neprolp()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/visithistory.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("Nepro LP", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FeedBack()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/feedback.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("Nepro HP", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FoodRating()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/dishrating.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("Ensure +HMB", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FeedBack()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/dishrating.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("Ensure HMB", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diabetes()),
                          );
                        },
                        child:Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:Container(
                            height: 160,
                            width: MediaQuery.of(context).size.width / 2 - 32, // minus 32 due to the margin
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // posion the everything to the bottom
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child:Image(
                                    image: new AssetImage("assets/images/dishrating1.png"),
                                    width: 80,
                                    height: 80,
                                    color: null,
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Center(
                                  child:Text("Ensure Diabetes care", style: TextStyle(fontSize: 13.0, color: Colors.black)),)
                              ],
                            ),
                          ),),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
          ))]
          )
    );
  }
}