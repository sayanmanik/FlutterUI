import 'package:flutter/material.dart';
import 'package:salonApp/dummy_data.dart';

import 'account_details_list_item.dart';

class AccountDetailsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context,i){
          return AccountDetailsListItem(ACCOUNT_DETAILS[i]);
        },
        itemCount: ACCOUNT_DETAILS.length,),
    );
  }
}