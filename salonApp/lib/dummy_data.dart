import 'package:flutter/material.dart';
import 'package:salonApp/item_data.dart';
import 'package:salonApp/personal_details.dart';

import 'account_data.dart';

const DUMMY_DATA = const [
  ItemData(
    imageUrl: 'assets/images/salon1.jpg',
    title: 'Ratro Salon',
    loc: 'Central park, City Tower, New York',
     rating: 4.5
  ),
  ItemData(
    imageUrl: 'assets/images/salon2.jpg',
    title: 'Ultra Unisex',
    loc: 'Central park, City Tower, New York',
    rating: 5.0
  ),
  ItemData(
    imageUrl: 'assets/images/salon3.jpg',
    title: 'Peter Parlor',
    loc: 'Central park, City Tower, New York',
    rating: 4.5
  ),
  ItemData(
    imageUrl: 'assets/images/salon4.jpg',
    title: 'Open City Salon',
    loc: 'Central park, City Tower, New York',
    rating: 4.5
  ),
  
  ItemData(
    imageUrl: 'assets/images/salon5.jpg',
    title: 'Wonder Spot',
    loc: 'Nestolia House, George Tower, New York',
    rating: 5.0
  ),
  
  ItemData(
    imageUrl: 'assets/images/salon6.jpg',
    title: 'Excellent Salon',
    loc: 'Central park, City Tower, New York',
    rating: 3.5
  ),
];


const ACCOUNT_DATA = const[
  AccountData(
    icon: Icons.account_circle,
    text: "My Profile"
  ),
  AccountData(
    icon: Icons.star,
    text : "My Reviews"
  ),
  AccountData(
    icon: Icons.calendar_today,
    text: "Terms & Conditions"
  ),
  AccountData(
    icon: Icons.mail,
    text: "Connect Us"
  ),
  AccountData(
    icon: Icons.web,
    text: "Change Language"
  ),
  AccountData(
    icon: Icons.accessibility,
    text: "LogOut"
  )
];

const ACCOUNT_DETAILS = const[
  PersonalDetails(
    iconData: Icons.account_circle,
    title: "Full Name",
    subTitle: "Samantha Smith"
  ),
  PersonalDetails(
    iconData: Icons.email,
    title: "Email Address",
    subTitle: "samanthasmith@mail.com"
  ),
  PersonalDetails(
    iconData: Icons.phone,
    title: "Phone Number",
    subTitle: " +1 987 654 3210" 
  ),
];