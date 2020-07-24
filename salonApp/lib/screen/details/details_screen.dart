import 'package:flutter/material.dart';
import 'package:salonApp/widgets/details/details_location.dart';
import 'package:salonApp/widgets/details/details_search.dart';
import 'package:salonApp/widgets/list/service_list.dart';
import 'package:salonApp/widgets/list/list_data.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          DetailsLocation(),
          DetailsSearch(),
          Container(
            margin: EdgeInsets.only(left:20,top:20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Service",
                style: TextStyle(
                    fontFamily: Theme.of(context).textTheme.body1.fontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).textTheme.body1.color),
              ),
            ),
          ),
          ServicesList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "Nearby Salons",
                  style: TextStyle(
                      fontFamily: Theme.of(context).textTheme.body1.fontFamily,
                      color: Theme.of(context).textTheme.body1.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "View in Map",
                  style: TextStyle(
                     fontFamily: Theme.of(context).textTheme.body1.fontFamily,
                      color: Colors.deepOrange[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )
            ],
          ),
          ListData()
        ],
      ),
    );
  }
}
