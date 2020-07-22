import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;

  const GalleryItem({this.imagePath, this.title,this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image(
                  height: 300,
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath))),
          Positioned(
              bottom: 40,
              right: 10,
              width: 200,
              child: Container(
                color: Colors.black54,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    //fontFamily: 'RobotoCondensed'
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              )),
          Positioned(
              bottom: 20,
              right: 10,
              width: 200,
              child: Container(
                color: Colors.black54,
                child: Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    //fontFamily: 'RobotoCondensed'
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ))
        ],
      ),
    );
  }
}
