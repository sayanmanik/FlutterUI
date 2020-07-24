import 'package:flutter/material.dart';
import 'package:salonApp/widgets/list/list_item.dart';

import '../../dummy_data.dart';

class ListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.only(left:20),
          child: ListView.builder(
            itemBuilder: (BuildContext ctx, int index) {
              return ListItem(DUMMY_DATA[index]);
            },
            itemCount: DUMMY_DATA.length,
          )),
    );
  }
}
