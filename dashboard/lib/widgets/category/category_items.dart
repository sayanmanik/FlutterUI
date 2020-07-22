import 'package:dashboard/widgets/category/category_header.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final IconData icon;
  final String title;
  final Map mapData;

  CategoryItems({this.icon, this.title, this.mapData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      width: 350,
      child: Column(
        children: [
          CategoryHeader(categoryTitle: title, icon: icon),
          Expanded(
            
            child: Container(
              color: Colors.blueGrey[900],
              //height: MediaQuery.of(context).size.height/2,
              // width: 350,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mapData.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    IconData key = mapData.keys.elementAt(index);
                    Map map = mapData[key];
                    String first = map.keys.elementAt(0);
                    String second = map[first];

                    return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              key,
                              color: Colors.red[300],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  top: 20.0,
                                  right: 20.0,
                                  bottom: 20.0),
                              child: Column(children: [
                                Text(                                 
                                  first,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'RobotoCondensed',),
                                ),
                                Text(
                                  second,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'RobotoCondensed',),
                                  //softWrap: true,
                                  //overflow: TextOverflow.fade,
                                )
                              ]))
                        ]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
