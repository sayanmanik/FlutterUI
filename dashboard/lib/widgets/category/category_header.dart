import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  final String categoryTitle;
  final IconData icon;

  const CategoryHeader({Key key, this.categoryTitle, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      height: 75,
      // width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              icon,
              color: Colors.white70,
              size: 50,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                categoryTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed',
                  fontSize: 25),
              ))
        ],
      ),
    );
  }
}
