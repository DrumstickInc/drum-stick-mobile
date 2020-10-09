import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSignedIn = false;



  Scaffold buildHomeScreen() {
    return Scaffold(
      body: PageView(
        children: <Widget>
          TimeLinePage(),
      )
    )
  }

  Scaffold buildSignInScreen() {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "DrumStick",
              style: TextStyle(
                  fontSize: 75.0, color: Colors.white, fontFamily: "Signatra"),
            ),
            GestureDetector(
              onTap:()=> "button tapped",
              child: Container(
                width: 270.0,
                height: 65.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/jmlopezdona/react-native-google-signin/HEAD/img/signin-button.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    if (isSignedIn) {
      return buildHomeScreen();
    }
    else {
      return buildSignInScreen();
    }
  }
}



