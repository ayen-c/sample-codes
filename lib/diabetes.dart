import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'payonline.dart';
import 'search.dart';

class Diabetes extends StatefulWidget {
  const Diabetes({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiabetesState createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
  bool one = false;
  bool two = false;
  bool three = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            toolbarHeight: 70.0,
            flexibleSpace: SafeArea(
              child:SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
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
                          Text("Ensure Diabetes care",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),

                        ],
                      ),
                    ],
                  ),
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
                                text: '1. Helps to manage blood glucose levels\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '2. Supports weight management\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '3. Free from lactose trans-fat and gluten,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '4. complex Vitamins help the body to utilize nutrients for energy and other physical functions.,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '5. helps boost immunity\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Dosage: 6 scoops with 190ml water once or \n 3 scoops with 100ml water twice a day.',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),

                        )]),
                ),

              ],
            ),
          ),
        )
    );
  }
}