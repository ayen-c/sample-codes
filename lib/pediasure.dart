import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'payonline.dart';
import 'search.dart';

class Pediasure extends StatefulWidget {
  const Pediasure({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PediasureState createState() => _PediasureState();
}

class _PediasureState extends State<Pediasure> {
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
                          Text("Pediasure Advance",
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
                                text: '1. It has 37 essential nutrients\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '2. PEDIASURE WHEN USED FOR 90 DAYS, IT REDUCES THE RISK OF INFECTION BY 50 %\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '3. INCREASES HEIGHT & WEIGHT,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '4. ALSO IMPROVES IMMUNITY AND HELPS IN BRAIN DEVELOPMENT.,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Dosage: 5 scoops (45.5gm) with 190ml water once or 2.5 scoops with 100 ml water twice a day.',
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