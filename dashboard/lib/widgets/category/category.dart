import 'package:dashboard/widgets/category/category_items.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Map<IconData, Map<String, String>> materialMap = {
    Icons.mail: {'Mail': 'This is a mail icon'},
    Icons.mail_outline: {'Mail Outline': 'This is mail outline icon'},
    Icons.map: {'Map': 'This is a map icon'},
    Icons.markunread: {'Mark Unread': 'This is a mark unheard icon'}
  };

  Map<IconData, Map<String, String>> cupertino = {
    Icons.cached: {'Cached': 'This is a cached icon'},
    Icons.cake: {'Cake': 'This is a cake icon'},
    Icons.calendar_today: {'Calendar today':'This is a calnedar today icon'},
    Icons.calendar_view_day: {'Calendar view day':'This is a calndar view day icon'}
  };

  Map<IconData, Map<String,String>> styles = {
    Icons.satellite: {'Satellite' : 'This is a satellite icon'},
    Icons.save: {'Save' : 'This is a save icon'},
    Icons.save_alt: {'Save alt':'This is a save alt icon'},
    Icons.scanner: {'Scanner':'This is a scanner icon'},
    Icons.school: {'School' : 'This is a school icon'}
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: MediaQuery.of(context).size.height/2,
      //width: 500,
      // child: Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItems(
              icon: Icons.message, title: "Material", mapData: materialMap),
          CategoryItems(
              icon: Icons.call, title: 'Cupertino', mapData: cupertino),
          CategoryItems(
              icon: Icons.score, title: 'Styles & Others', mapData: styles),
        ],
      ),
    );
  }
}
