import 'package:flutter/material.dart';
import 'dart:ui';
import 'customerdashboard.dart';
import 'menu.dart';
import 'search.dart';

class PlacedOrder extends StatefulWidget {
  @override
  State<PlacedOrder> createState() => _PlacedOrderState();
}

class _PlacedOrderState extends State<PlacedOrder> {
  TextEditingController textController = TextEditingController();

  bool vegetarian = false;
  bool nonVegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.purple,
          automaticallyImplyLeading: false,
          toolbarHeight: 60.0,
          flexibleSpace: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
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
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Menu()),
                            );
                          },
                          icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                      Spacer(),
                      Text("Hotel And Restaurant Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
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
          height: 50,
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
                        Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF1F4F8),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child:
                                Center(
                                  child:Text(
                                      'Placed Order',
                                      style: TextStyle(fontSize: 28.0, color: Colors.black)
                                  ),
                                ),),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child:
                                Center(
                                  child:Text(
                                    'Review your order below before checking out.',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              DataTable(    
                                   horizontalMargin: 0,
                                      columnSpacing: 30,
                                          headingRowHeight: 0,
                            columns: [
                                DataColumn(
                                  label:Expanded(
                                            child: Text(
                                                  '  ',
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    DataColumn(label:
                    Expanded(
                        child: Text(
                            'Dish',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        ))),
                    DataColumn(label:
                    Expanded(
                        child: Text(
                            'Qty',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        ))),
                    DataColumn(label:
                    Expanded(
                        child: Text(
                            'Price',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        ))),
                    DataColumn(label:
                    Expanded(
                        child:Row(
                            children:[
                              Text(
                                  'Total',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                              ),
                            ]
                        )
                    )
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell( Text('')),
                      DataCell(Text('Dish')),
                      DataCell(Text('qty')),
                      DataCell(Text('price')),
                      DataCell(Row(
                          children:[
                            Text('total'),
                          ]
                      )),
                    ]),
                  ],
                ),
                Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child:Container(
                      margin: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width,
                      height: 220 ,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child:ListView.builder(
                              itemCount: 105,
                              shrinkWrap: true,
                              itemBuilder: (ctx, int) {
                                return Card(
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Column(
                                        children:[
                                          DataTable(
                                            horizontalMargin: 0,
                                            columnSpacing: 30,
                                            headingRowHeight: 0,
                                            columns: [
                                              DataColumn(
                                                label:Expanded(
                                                  child: Text(
                                                    '',
                                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              DataColumn(label:
                                              Expanded(
                                                  child: Text(
                                                      'Dish',
                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                                  ))),
                                              DataColumn(label:
                                              Expanded(
                                                  child: Text(
                                                      'Qty',
                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                                  ))),
                                              DataColumn(label:
                                              Expanded(
                                                  child: Text(
                                                      'Price',
                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                                  ))),
                                              DataColumn(label:
                                              Expanded(
                                                  child:Row(
                                                children:[
                                                  Text(
                                                      'Total',
                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                                                  ),
                                                 ]
                                                  )
                                              )
                                              ),
                                            ],
                                            rows: [
                                              DataRow(cells: [
                                                DataCell(
                                                  ClipRRect(
                                                  borderRadius: BorderRadius.circular(18),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1541592106381-b31e9677c0e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                                    width: 40,
                                                    height: 40,
                                                    fit: BoxFit.cover,
                                                    colorBlendMode: BlendMode.colorBurn,
                                                  ),
                                                ),),
                                                DataCell(Text('French Fries')),
                                                DataCell(Text('3.5')),
                                                DataCell(Text('\$1.7')),
                                                DataCell(Row(
                                                    children:[
                                                      Text('\$2.4'),
                                                      IconButton(
                                                          onPressed: () {
                                                            // Navigator.push(
                                                            //   context,
                                                            //   MaterialPageRoute(builder: (context) => SearchPage()),
                                                            // );
                                                          },
                                                          icon: const Icon(Icons.delete,color: Colors.red,)),
                                                ]
                                                )),
                                              ]),
                                            ],
                                          ),
                                        ],
                                      ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Price Breakdown',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Base Price',
                                        ),
                                        Text(
                                            '\$156.00',style: TextStyle(fontSize: 18.0, color: Colors.black)
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Taxes',
                                        ),
                                        Text(
                                            '\$24.20',style: TextStyle(fontSize: 18.0, color: Colors.black)
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Cleaning Fee',

                                        ),
                                        Text(
                                            '\$40.00',style: TextStyle(fontSize: 18.0, color: Colors.black)

                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                                'Total',style: TextStyle(fontSize: 14.0)
                                            ),
                                            Icon(Icons.info_outlined,
                                                size: 20,color: Colors.black),
                                          ],
                                        ),
                                        Text(
                                            '\$230.20',style: TextStyle(fontSize: 24.0, color: Colors.black)
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                      SizedBox(
                                      child: ElevatedButton(
                                        onPressed: () {
                                            showDialog(
                                                       context: context,
                                                            builder: (context) {
                                                              Future.delayed(
                                                                  Duration(
                                                                      seconds: 3), () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (
                                                                            context) => Dashboard())
                                                                );
                                                              });
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    "Order Confirm successfully"),
                                                                content: const Text(
                                                                    "Thank You"),
                                                                actions: <
                                                                    Widget>[
                                                                  Row(
                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                      children: [
                                                                        Container(
                                                                          color: Colors.white,
                                                                          child: Image(
                                                                            image: new AssetImage(
                                                                                "assets/images/success.gif"),
                                                                            width: 30,
                                                                            height: 30,
                                                                            color: null,
                                                                            fit: BoxFit
                                                                                .scaleDown,
                                                                            alignment: Alignment
                                                                                .center,
                                                                          ),
                                                                        )
                                                                      ]
                                                                  )
                                                                ],
                                                              );
                                                            }
                                                            );
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(Colors.purple),
                                          foregroundColor:
                                          MaterialStateProperty.all(Colors.white),
                                          minimumSize:
                                          MaterialStateProperty.all(Size(200, 40)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(15.0))),
                                        ),
                                        child: Text('Confirm Order',style: TextStyle(fontSize: 16.0, color: Colors.white)),
                                      ),
                                    ),
                                  ]
                                  ),
                                ],
                              ),
                            ])

                      ])
              )
            ]
        )
    );
  }
}