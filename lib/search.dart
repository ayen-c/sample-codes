import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final fieldText = TextEditingController();
   SearchPage({Key? key}) : super(key: key);
  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        toolbarHeight: 80.0,
        flexibleSpace: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
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
                SizedBox(
                  height: 20,
                ),
                 Container(
                   width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextField(
                      controller: fieldText,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: clearText,                          ),
                            hintText: 'Search...',
                            border: InputBorder.none),
                    ),
                  ), // set an icon or image
                 ) // set your search bar setting
              ]
            ),
          ),
        ),
      ),
    );
  }
}
