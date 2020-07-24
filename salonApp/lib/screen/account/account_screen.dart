import 'package:flutter/material.dart';
import 'package:salonApp/widgets/list/account_list_data.dart';
import 'package:salonApp/widgets/shader_mask.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //   child:
      Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Stack(children: [
            ShaderMaskImage('assets/images/account.jpg'),
            Positioned(
                bottom: 10,
                left: 20,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            'Hi,',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text('Samantha Smith',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold))),
                      Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text('Let\'s make you more beautiful'))
                    ]))),
          ]),
          AccountListData(),
        ],
      ),
    );
  }
}
