import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';


void main() => runApp(MaterialApp(
    home: ClrDtc()
));


class ClrDtc extends StatelessWidget{


  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Detection'),
        backgroundColor: Colors.purple[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
            child: Icon(Icons.image,
              size: 100,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
            child: Text('Colour Selected:',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.all(60.0),
            child: ElevatedButton(
              child: Text('Exit'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (BuildContext context) => Home(),
                )
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(-6982195)
              ),
            ),
          ),
        ],
      ),
    );
  }
}