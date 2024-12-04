import 'package:flutter/material.dart';
import 'customerdashboard.dart';
import 'payonline.dart';
import 'search.dart';

class RequestBill extends StatefulWidget {
  const RequestBill({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RequestBillState createState() => _RequestBillState();
}

 class _RequestBillState extends State<RequestBill> {
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
                        Text("Pediasure 7+",
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
                                text: '1. Nutrition for 7+ years of kids, contains high quality proteins, along with oats, almonds and essential nutrients.\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '2. Contains 29 nutrients, with 7 nutrients for brain development, 11 bone nutrients which helps in bone strength and muscle mass and 11 other essential nutrients for overall growth.\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '3. Pediasure 7 Plus contains a prebiotic (fructo oligosaccharides, FOS) which supports gut health.,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: '4. Helps in increasing physical activity, helps in growing bone by 1.5 times along with bone growth supports muscle and brain development.,\n',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                text: 'Dosage: 2tbsp with 150 ml of milk twice a day',
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