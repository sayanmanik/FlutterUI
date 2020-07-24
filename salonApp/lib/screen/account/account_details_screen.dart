import 'package:flutter/material.dart';
import 'package:salonApp/widgets/list/account_details_list.dart';
import 'package:salonApp/widgets/shader_mask.dart';

class AccountDetailsScreen extends StatelessWidget {
  static String routeName = "/account_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Column(children: [
            Stack(children: [
              ShaderMaskImage('assets/images/account.jpg'),
              Positioned(
                bottom: 10,
                left: 20,
                child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.deepOrange[200],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Change Photo",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange[200])),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 140.0),
                        child: Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.deepOrange[200],
                        ),
                      )
                    ]),
              ),
            ]),
            AccountDetailsList()
          ]),
        ));
  }
}
