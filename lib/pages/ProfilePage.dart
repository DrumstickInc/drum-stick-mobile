import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/HeaderWidget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[900],
      appBar:  AppBar(
        title: Text('Drumstick Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                  backgroundImage: NetworkImage( 'https://images.unsplash.com/photo-1512814078102-ed265de440fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                  radius:40.0
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),


            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )

            ),
            SizedBox(height: 10.0),
            Text(
                'Njoki ',
                style: TextStyle(
                  color: Colors.amberAccent[280],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                )

            ),
            SizedBox(height: 30.0),
            Text(
                'CURRENT USER RATING',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )

            ),
            SizedBox(height: 10.0),
            Text(
                '8',
                style: TextStyle(
                    color: Colors.amberAccent[280],
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                    color: Colors.grey[400],

                ),
                SizedBox(width: 10.0),
                Text(
                  'njokifaith61@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )

              ]
            )
          ]
        )
      )
    );
  }
}
