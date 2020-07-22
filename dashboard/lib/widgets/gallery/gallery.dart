import 'package:flutter/material.dart';

import 'gallery_item.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GalleryItem(
            imagePath: 'assets/images/bat.jpg',
            title: 'A Bat',
            desc: 'A mammal',
          ),
          GalleryItem(
              imagePath: 'assets/images/china.jpg',
              title: 'China Map',
              desc: 'Most populous country'),
          GalleryItem(
            imagePath: 'assets/images/city.jpg',
            title: 'City',
            desc: 'Our living space',
          ),
          GalleryItem(
              imagePath: 'assets/images/flower.jpg',
              title: 'Flower',
              desc: 'Flower is beautiful')
        ],
      ),
    );
  }
}
