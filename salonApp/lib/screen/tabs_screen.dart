import 'package:flutter/material.dart';

import 'account/account_screen.dart';
import 'appointment_screen.dart';
import 'details/details_screen.dart';
import 'wallet_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'page': DetailsScreen(), 'title': 'Details'},
      {'page': AppointmentScreen(), 'title': 'Appointment'},
      {'page': WalletScreen(), 'title': 'Wallet'},
      {'page': AccountScreen(), 'title': 'Account'}
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedPageIndex]['title']),
      // ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.blueGrey[300],
        selectedItemColor: Colors.orange[200],
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.details),
              title: Text('Details')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.ac_unit),
              title: Text('Appointment')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.attach_money),
              title: Text('Wallet')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.account_box),
              title: Text('Account')),
        ],
      ),
    );
  }
}
