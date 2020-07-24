import 'package:flutter/material.dart';
import 'package:salonApp/widgets/details/map_stack.dart';
import 'package:salonApp/widgets/list/list_data.dart';

class AllServicesScreen extends StatelessWidget {
  static const routeName = '/all_services';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Services'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StackMap(),
            Container(
                margin: EdgeInsets.only(bottom: 20,left: 20),
                child: Text("129 Salons Found",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).textTheme.body1.color,
                      //fontWeight: FontWeight.bold,
                    ))),
            Expanded(child: ListData())
          ],
        ),
      ),
    );
  }
}
