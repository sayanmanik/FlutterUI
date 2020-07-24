import 'package:flutter/material.dart';
import 'package:salonApp/personal_details.dart';

class AccountDetailsListItem extends StatelessWidget {
  final PersonalDetails details;

  AccountDetailsListItem(this.details);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Icon(
            details.iconData,
            size: 30,
            color: Colors.deepOrange[200],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
              margin: EdgeInsets.only(top: 20,left: 20),
              child: Text(
                details.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              child: Text(
                 
                details.subTitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.body1.color),
              )),
        ])
      ],
    );
  }
}
