import 'dart:io';

import 'package:flutter_app/pages/HomePage.dart';

import 'package:flutter/material.dart';

import 'package:flutter_app/pages/home_page2.dart';
import 'package:flutter_app/pages/login/login_page.dart';
import 'package:flutter_app/pages/login/register.dart';
import 'package:flutter_app/models/sliderModel.dart';


class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}



class _OnboardingPageState  extends State<OnboardingPage> {

  List<SliderModel> slides = new List<SliderModel>();
  //tells what index page is in
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

 Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return SliderTile(
              imageAssetPath: slides[index].getImageAssetPath(),
              title: slides[index].getTitle(),
              desc: slides[index].getDesc(),
            );
          }),
      bottomSheet: currentIndex != slides.length -1 ? Container(
        height: Platform.isAndroid ? 70 : 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: (){
                pageController.animateToPage(slides.length -1, duration: Duration(milliseconds: 400), curve: Curves.linear);
              },
              child: Text("SKIP")
            ),
            Row(
              children: <Widget>[
                //
                for(int i =0; i < slides.length; i++) currentIndex == i ?pageIndexIndicator(true) : pageIndexIndicator(false)
              ],
            ),
            //you can use inkwell or gesture detector
            InkWell(
                onTap: (){
                  pageController.animateToPage(currentIndex + 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                child: Text("NEXT")
            ),
          ],
         )
    ) : Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: Platform.isAndroid ? 70 : 60,
          color: Colors.green,
        child: RaisedButton(
            child: Text("GET STARTED NOW", style: TextStyle(
          color: Colors.white,

             ),
             ),
            color: Colors.green,
            onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>LoginPage()),
            );
            },
         ) ,


      ));
}
}

class SliderTile extends StatelessWidget {
  String imageAssetPath, title, desc;

  SliderTile({this.imageAssetPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(
            height: 20,
          ),
          Text(title, textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15
          ),),
          SizedBox(
            height: 15,
          ),
          Text(desc, textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14))
        ],
      ),
    );
  }
}