// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'menu.dart';

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStackWidget(),
    );
  }
}

class MyStackWidget extends StatefulWidget {
  const MyStackWidget({Key? key}) : super(key: key);

  @override
  State<MyStackWidget> createState() => _MyStackWidgetState();
}

class _MyStackWidgetState extends State<MyStackWidget> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 197, // Set this height
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(children: [
              SizedBox(height: 50),
              Row(
                children: const <Widget>[
                  Padding(padding: EdgeInsets.only(left:0)),
                  Flexible(
                      child: Text(
                        "Hotel & Restaurant Name",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.zero,
                  ),
                  Text("Hello Mr.",
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                  Flexible(
                    flex: 3,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        label: Center(
                          child: Text("Waiter Name",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black)),
                        ),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  Text("You Have Served",
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                  Flexible(
                    flex: 1,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        label: Center(
                          child: Text("#",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black)),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text("Table Today",
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                ]),
              ),
              SizedBox(height:10),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                SizedBox(
                    child: Center(
                      child: Text("Ready To Serve Notification Area",
                          style:
                          TextStyle(fontSize: 18.0, color: Colors.green)),
                    ))
              ])
            ]),
          ),
        ),
        bottomNavigationBar: Container(
          height: 40,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(color: Colors.black54, blurRadius: 10)
          ]),
          child: BottomAppBar(
            color: Colors.purple.shade900,
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
        body: ListView(children: <Widget>[
          SizedBox(height: 0.2),
          Container(
            height: height * 0.6,
            padding: EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 3,
                child:
                Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  SingleChildScrollView(
                      child: Column(children: <Widget>[
                        SizedBox(height: 25),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.greenAccent,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  primary: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black, backgroundColor: Colors.greenAccent,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height:10),
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Table#",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.0),
                            child: SizedBox(
                              width: 130,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  foregroundColor: Colors.black,
                                ),
                                child: Text("Done",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(height: 25),
                      ]))
                ]),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              height: 40,
              child: OutlinedButton(
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black)))),
                onPressed: () {},
                child: const Text('Manual Order',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.greenAccent,
                elevation: 1,
                child:
                Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                      SizedBox(
                          child: Text("Table No.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Container(
                              width: 100,
                              height: 30,
                              color: Colors.greenAccent,
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLines: null,
                                  expands: true,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 40.0),
                                    fillColor: Colors.black,
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: SizedBox(
                    width: 130,
                    child:
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: Text("Go To Menu",
                            style:
                            TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),))
                    ],
                  ),
                ])),
          )
        ]));
  }
}