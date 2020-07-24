import 'package:flutter/material.dart';
import 'package:salonApp/dummy_data.dart';
import 'package:salonApp/screen/account/account_details_screen.dart';
import 'package:salonApp/widgets/list/account_list_item.dart';

class AccountListData extends StatelessWidget {
  void _selectItem(BuildContext context) {
    Navigator.of(context).pushNamed(AccountDetailsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: () {
            _selectItem(context);
          },
          child: ListView.builder(
            itemBuilder: (BuildContext ctx, int index) {
              return AccountListItem(index);
            },
            itemCount: ACCOUNT_DATA.length,
          )),
    );
  }
}
