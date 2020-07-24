import 'package:flutter/material.dart';

import '../../dummy_data.dart';

class AccountListItem extends StatelessWidget {
  
  final int index;
  
  AccountListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Icon(
              ACCOUNT_DATA[index].icon,
              color: Colors.deepOrange[200],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              ACCOUNT_DATA[index].text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      
    );
  }
}
