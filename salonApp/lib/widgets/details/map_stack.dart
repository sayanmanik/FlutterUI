import 'package:flutter/material.dart';
import 'package:salonApp/widgets/shader_mask.dart';

class StackMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        
        ShaderMaskImage('assets/images/map.jpg'), 
        
        // ShaderMask(
        //   shaderCallback: (rect) {
        //     return LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [Colors.black, Colors.transparent],
        //     ).createShader(Rect.fromLTRB(rect.width/2, rect.height/2, rect.width, rect.height));
        //   },
        //   blendMode: BlendMode.dstIn,
        //   child: Image.asset(
        //     'assets/images/map.jpg',
        //     //height: 400,
        //     fit: BoxFit.contain,
        //   ),
        // ),
        Positioned(
          width: 175,
          right: 130,
          bottom: 75,
          
          //left: MediaQuery.of(context).size.width/2,

          // child: Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: [
          //         Colors.deepOrange[200],
          //   Colors.deepOrange[300]
          //       ]
          //       )
          //   ),

          child: RaisedButton(
            elevation: 5,
            color: Colors.deepOrange[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            // child: Container(
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       colors: [
            //         Colors.deepOrange[200],
            //         Colors.white
            //       ])),
            // )
            child: Text('View in Map',
                style: TextStyle(
                  fontSize: 20,
                    fontFamily: Theme.of(context).textTheme.body1.fontFamily,
                    color: Colors.white)),

            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
