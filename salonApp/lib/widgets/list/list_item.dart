import 'package:flutter/material.dart';
import 'package:salonApp/item_data.dart';

class ListItem extends StatelessWidget {
  final ItemData data;
  ListItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueGrey[300],
      width: double.infinity,
      height: 125,
      margin: EdgeInsets.only(bottom: 20),
      //padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  data.imageUrl,
                  height: 125,
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      data.rating.toString(),
                      style: TextStyle(
                          color: Theme.of(context).textTheme.body1.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      data.title,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.body1.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Row(children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            data.loc,
                            style: TextStyle(
                                color: Theme.of(context).textTheme.body1.color),
                            // softWrap: false,
                            // overflow: TextOverflow.fade,
                            // maxLines: 2,
                          ),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
