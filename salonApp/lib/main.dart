import 'package:flutter/material.dart';
import 'package:salonApp/screen/account/account_details_screen.dart';
import 'package:salonApp/screen/details/all_services_screen.dart';

import 'screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  static const  MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);



  static const  MaterialColor black = const MaterialColor(
  0x00000000,
  const <int, Color>{
    50: const Color(0x00000000),
    100: const Color(0x00000000),
    200: const Color(0x00000000),
    300: const Color(0x00000000),
    400: const Color(0x00000000),
    500: const Color(0x00000000),
    600: const Color(0x00000000),
    700: const Color(0x00000000),
    800: const Color(0x00000000),
    900: const Color(0x00000000),
  },
);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User App',
      theme: ThemeData(
        primarySwatch: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:  ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Colors.grey[800],
            fontFamily: 'RobotoCondensed' 
          ),

        ),
        bannerTheme: ThemeData.light().bannerTheme.copyWith(
          backgroundColor: Colors.grey[300]
        )
        
      ),
      routes: {
        "/" :(ctx)=> TabsScreen(),
        AllServicesScreen.routeName : (ctx)=> AllServicesScreen(),
        AccountDetailsScreen.routeName : (ctx) => AccountDetailsScreen()
      },
    );
  }
}
