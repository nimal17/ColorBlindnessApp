import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/image_picker.dart';

void main() => runApp(MaterialApp(
  home: Home()
  ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  AppBar(
      //   title: Text('Color Blind'),
      //   centerTitle: true,
      //   backgroundColor: Colors.deepPurple.shade300,
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bga.jpg'),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(0,150,0,110),
              child: new Text(
                  'Colorless.ly',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lob',
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              child: SizedBox(
                height:90,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ImgPck(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                    ),
                    child: Text('Color Detector',
                    style: TextStyle(
                        fontSize: 20,
                    )
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              child: SizedBox(
                height: 90,
                child: ElevatedButton(
                    onPressed: (){
                      print('Color Blindness Detection Test');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                    ),
                    child: Text('Color Blindness Detection Test',
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,10,30,10),
              child: SizedBox(
                height: 90,
                child: ElevatedButton(
                    onPressed: (){
                      print('Information on Color Blindness');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                    ),
                    child: Text('Information',
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                ),s
              ),
            ),
          ],
        ),
      ),
         );
       }
     }

