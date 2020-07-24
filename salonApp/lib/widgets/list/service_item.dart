import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final IconData iconData;
  final String desc;

  ServiceItem({this.iconData, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepOrange[200],
            Colors.deepOrange[300]
            ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              //spreadRadius: 5.0,
              offset: Offset(0.0,5.0)

          )],
        //color: Colors.deepOrange[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 30,
          ),
          Text(
            desc,
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.body1.fontFamily,
                fontSize: 15,
                //fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
