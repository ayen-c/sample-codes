import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'payonline.dart';
import 'search.dart';

class Neprolp extends StatefulWidget {
  const Neprolp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NeprolpState createState() => _NeprolpState();
}

class _NeprolpState extends State<Neprolp> {
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
                          Text("Nepro LP",
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
                                text: '1. Helps meet patients’ increased energy needs.\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '2.  Contains healthy fat blend to support heart health.\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '3. It is designed with lower protein to help slow the progression of chronic kidney disease and maintain nutrition status.,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '4. Low phosphorous and potassium,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Dosage: 9 level scoops (87 Gms) of powder with 170 ml of clean sterile water.',
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