import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'payonline.dart';
import 'search.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
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
                          Text("Ensure HMB",
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
                        text: '1. Provides balanced and complete nutrition\n',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: '2. Helps to toughen the bones\n',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: '3. Enhances the immune system,\n',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: '4. Helps to achieve good digestive system.,\n',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: '5. Helps to stimulate metabolism\n',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: 'Dosage: 3 tbsp. (27 gm.) of Ensure HMB with 150 ml milk or \n 4 tbsp. (36 gm.) with100ml water twice a day or 8 tbsp. with 190ml water once.',
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