import 'package:flutter/material.dart';
import 'dart:ui';
import 'customerdashboard.dart';
import 'search.dart';

class PayOnline extends StatefulWidget {
  const PayOnline({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PayOnlineState createState() => _PayOnlineState();
}

class _PayOnlineState extends State<PayOnline> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 70,
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            flexibleSpace: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    gradient:
                    LinearGradient(begin: Alignment.topCenter, colors: [
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
                      children: [Flexible(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 30),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Dashboard()));
                          },
                        ),
                      ),
                        SizedBox(width: 2),
                        Text("Hotel And Restaurant Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SearchPage()),
                              );
                            },
                            icon: const Icon(Icons.search,color: Colors.white,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      bottomNavigationBar: Container(
        height: 40,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Colors.black54, blurRadius: 10)
        ]),
        child: BottomAppBar(
          color: Colors.purple,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                'Product & Contact Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )),
        ),
      ),
      body:ListView(
        children:[
          Center(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    Container(
                        height: 45,
                        width: 150.0,
                        child: Card(
                            color: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child:TextButton(
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.timer, color: Colors.black),
                                  Flexible(
                                      child: Text(" 155 min to serve",
                                          style: TextStyle(
                                              color: Colors.black))),
                                ],
                              ),
                            ))),
                    SizedBox(
                        height: 45,
                        width: 100.0,
                        child: Card(
                            color: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                                child: Text(" 5000.00 Rs",
                                    style: TextStyle(color: Colors.black))))),
                    Container(
                        height: 45,
                        width: 120.0,
                        child: Card(
                            color: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                                child: Text(" Search By Cat ",
                                    style: TextStyle(color: Colors.black))))),
                  ]),
                ),
                Text('Online Payment',style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold)),
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child:Container(
                      margin: EdgeInsets.all(10.0),
                      color: Color.fromARGB(255, 236, 237, 239),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child:ListView.builder(
                              itemCount: 10,
                              shrinkWrap: true,
                              itemBuilder: (ctx, int) {
                                return Card(
                                    elevation: 1,
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
                                                    Text("Item ",style:TextStyle(fontSize:14, fontWeight: FontWeight.bold, color: Colors.brown)),
                                                    Text("Price",style:TextStyle(fontSize:14, fontWeight: FontWeight.bold, color: Colors.brown),),
                                                    Text("Order Quantity",style:TextStyle(fontSize:14, fontWeight: FontWeight.bold, color: Colors.brown)),
                                                    Text("Total Amount",style:TextStyle(fontSize:14, fontWeight: FontWeight.bold, color: Colors.brown)),
                                                  ]
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Item $int",style:TextStyle(fontSize:14, fontWeight: FontWeight.bold, color:  Colors.brown)),
                                                  Text("price",style:TextStyle(fontSize:14)),
                                                  Text("Point",style:TextStyle(fontSize:14)),
                                                  Text("Amount",style:TextStyle(fontSize:14)),
                                                ],
                                              )
                                            ],
                                          ),)
                                      ],
                                )
                               );
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.0,
                  // color: Colors.grey[300],
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text("Bill Summer",
                        style:
                        TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        height: 30.0,
                        padding: EdgeInsets.only(left: 15, top: 5),
                        color: Colors.white,
                        child: Text(
                          "Grand Total - ",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        color: Colors.white,
                        child: Text(
                          "Charges If Any  - ",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        color: Colors.white,
                        child: Text(
                          "Tax  - ",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        color: Colors.white,
                        child: Text(
                          "Total Bill Amount  - ",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              Row(
                  children: [
                    Spacer(),
                    Container(
                      height: 40,
                      width: 165,
                      child:ElevatedButton(
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.purple),
                          foregroundColor:
                          MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15.0))),
                        ),
                        child: Text('UPI Link',style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ),
                    ),
                SizedBox(width: 20),
                    SizedBox(
                      height: 40,
                      width: 165,
                      child:ElevatedButton(
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.purple),
                          foregroundColor:
                          MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15.0))),
                        ),
                        child: Text('Net Banking Link',style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ],
            )),
      ]),
    );
  }
}