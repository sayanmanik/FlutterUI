import 'package:flutter/material.dart';

class ShaderMaskImage extends StatelessWidget {
  final String text;

  ShaderMaskImage(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      
      child: ShaderMask(
        shaderCallback: (rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.transparent],
          ).createShader(Rect.fromLTRB(
              rect.width / 2, rect.height / 2, rect.width, rect.height));
        },
        blendMode: BlendMode.dstIn,
        child: Image.asset(
          text,
          //height: 400,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
