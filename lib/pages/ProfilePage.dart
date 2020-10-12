import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/HeaderWidget.dart';

class ProfilePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:  Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.redAccent,Colors.deepOrange],

            ),
          ),
          child: Container(
            width: double.infinity,
            height: 330.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/originals/ba/27/d7/ba27d717a3b7632a03a168b27018ce20.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Binti Afriq",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    clipBehavior: Clip.antiAlias,
                    color: Colors.white,
                    elevation: 8.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Posts",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "5300",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400,
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "28.6k",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400,
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "2k",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400,
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )

            ),
          ),
        ),

        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.add_location),
                Text(
                  "Location",
                  style: TextStyle(

                    color: Colors.green,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Nairobi, Kenya ",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    letterSpacing: 2.0,

                  ),
                ),
              ],
            ),
        ),
    ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Mowiki",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    letterSpacing: 2.0,

                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Languages",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Java, Javascript, Android, Angular, Postgresql, SQL. "
                  ,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    letterSpacing: 2.0,

                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: 300.0,
          child: RaisedButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),

            ),
            elevation: 0.0,
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.redAccent, Colors.deepOrangeAccent],
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Container(
                constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                            "See Posts",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),

          ),
        ),
        )],
    ),

        );
  }
}
