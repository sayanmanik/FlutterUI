import 'package:dashboard/widgets/gallery/gallery.dart';
import 'package:flutter/material.dart';

import 'widgets/category/category.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/flutter.png')),
                Text("Flutter"),
              ],
            )),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text('Gallery',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Railway',
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ))),
                Gallery(),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(20),
                    child: Text('Categories',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Railway',
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold))),
                Category()
              ],
            ),
          ),
        ));
  }
}
