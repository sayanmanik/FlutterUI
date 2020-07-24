import 'package:flutter/material.dart';

class DetailsLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: MediaQuery.of(context).padding,
      //padding: EdgeInsets.only(top:20.0,left: 20.0),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.location_on,
                color: Colors.deepOrange[200],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Column(
                children: [
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //  child: 
                    Text("Current Location",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).textTheme.body1.color,
                        )),
 //                 ),
 //                 Align(
 //                   alignment: Alignment.centerLeft,
 //                   child:
                     Text(
                      "Central Park, New York, USA",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.body1.color),
                    ),
 //                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
