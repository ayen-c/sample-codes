// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'customerdashboard.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          automaticallyImplyLeading: false,
          toolbarHeight: 80.0,
          flexibleSpace: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Colors.purple,
                    Colors.purple,
                    Colors.purple,
                  ])),
              // set your color
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 30),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Dashboard()));
                          },
                        ),
                      Text("Hotel And Restaurant Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                    ],
                  ),
                  Text("Visit List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )), // set an icon or image
                  // set your search bar setting
                ],
              ),
            ),
          ),
        ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 10)]),
        child: BottomAppBar(
          color: Colors.purple,
          child: Align(
              alignment: Alignment.center,
              child: Text('Product & Contact Information',style: TextStyle(color: Colors.white, fontSize: 18.0,),)
          ),
        ),
      ),
      body:  Stack(
        children: [
      const SizedBox(height: 10.0),
          ListView(
            children: [
              const SizedBox(height: 10.0),
              // padding: const EdgeInsets.all(66.0),
             Container(
               margin: EdgeInsets.all(10.0),
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height * 0.70,
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: <Widget>[
                   Expanded(
                     child:ListView.builder(
                       itemCount: 100,
                       shrinkWrap: true,
                       itemBuilder: (ctx, int) {
                         return Card(
                             elevation: 4,
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)),
                           child: Column(
                             children:[
                               Container(
                                   padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                           child:Row(
                                 children: [
                                   Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children:[
                                         Text("Date",style:TextStyle(fontSize:14)),
                                         Text("Total Bill Amt",style:TextStyle(fontSize:14),),
                                         Text("Loyality Point", style:TextStyle(fontSize:14)
                                         )]
                                   ),
                                   SizedBox(
                                     width: 80,
                                   ),
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Date $int",style:TextStyle(fontSize:14)),
                                       Text("Total Bill $int",style:TextStyle(fontSize:14)),
                                       Text("Loyality Point",style:TextStyle(fontSize:14)),
                                       ],
                                   )
                                 ],
                               )),
                             ],
                           ),
                         );
                       },
                     ),
                   ),
                 ],
               ),
             )
            ])
        ])
    );
  }
}