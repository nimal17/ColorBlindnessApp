import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/color_detector.dart';

void main() => runApp(MaterialApp(
    home: ImgPck()
));


class ImgPck extends StatelessWidget{


  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colour Detection'),
        backgroundColor: Colors.purple[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: IconButton(icon: Icon(Icons.camera_alt),
              iconSize: 100,
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ClrDtc()
                  ));
              },),
          )
        ],
      ),
    );
  }
}