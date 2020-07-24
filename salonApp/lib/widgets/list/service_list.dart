import 'package:flutter/material.dart';
import 'package:salonApp/screen/details/all_services_screen.dart';

import 'service_item.dart';

class ServicesList extends StatelessWidget {


 void _selectItem(BuildContext context) {
   Navigator.of(context).pushNamed(AllServicesScreen.routeName);
 }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _selectItem(context);
              },
              child: Container(
                height: 100,
                margin: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServiceItem(iconData: Icons.all_inclusive, desc: "All"),
                    ServiceItem(iconData: Icons.face, desc: "Face"),
                    ServiceItem(iconData: Icons.headset, desc: "Headset"),
                    ServiceItem(iconData: Icons.panorama_fish_eye, desc: "Eye"),
                    ServiceItem(iconData: Icons.remove, desc: "Removal"),
                  ],
                ),
              ),
            );
          }
        
         
}
