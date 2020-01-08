import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demopage(),
    );
  }
}
class demopage extends StatelessWidget {
  launchURL() {
    launch('https://www.youtube.com');
  }
  launchURL2() {
    launch('https://www.facebook.com');
  }
  launchURL3() {
    launch('https://www.google.com');
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(

      body: Center(
        child: SafeArea(
          child: Center(

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                   RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: launchURL,
                    child: Text('Youtube'),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: launchURL2,
                    child: Text('facebook'),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: launchURL3,
                    child: Text('google'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

