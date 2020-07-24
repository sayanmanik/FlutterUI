import 'package:flutter/material.dart';

class DetailsSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).bannerTheme.backgroundColor
      ),
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search)),
          Flexible(
            child: Container(
              color: Theme.of(context).bannerTheme.backgroundColor,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Search Service, Salon or Location'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
