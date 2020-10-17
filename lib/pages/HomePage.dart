import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/EditProfilePage.dart';
import 'package:flutter_app/pages/NotificationsPage.dart';
import 'package:flutter_app/pages/ProfilePage.dart';
import 'package:flutter_app/pages/SearchPage.dart';
import 'package:flutter_app/pages/SettingsPage.dart';
import 'package:flutter_app/pages/UploadPage.dart';
import 'TimeLinePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSignedIn = false;
  PageController pageController;
  int getPageIndex = 0;

  void initState(){
    super.initState();

    pageController = PageController();
  }
  void dispose(){
    pageController.dispose();
    super.dispose();
  }



  whenPageChanges(int pageIndex){
    this.getPageIndex = pageIndex;
  }
  onTapChangePage(int pageIndex){
    pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 400), curve: Curves.bounceInOut,);

  }

  Scaffold buildHomeScreen() {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          TimeLinePage(),
          SearchPage(),
          UploadPage(),
          NotificationsPage(),
          ProfilePage(),
          EditProfilePage(),
          SettingsPage(),

        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: getPageIndex,
        onTap: onTapChangePage,
        backgroundColor: Theme.of(context). accentColor,
        activeColor: Colors.white,
        inactiveColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.group, size: 37.0)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),

        ]
      )
    );
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
      return buildHomeScreen();
    }
  }
}



