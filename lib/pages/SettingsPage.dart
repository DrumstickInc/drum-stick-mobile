import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,

          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),

            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,

                ),
                SizedBox(width: 8,),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change Password"),
            buildAccountOptionRow(context, "Content Settings"),
            buildAccountOptionRow(context, "Communities"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and Security"),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,

                ),
                SizedBox(width: 8,),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("New for you", true),
            buildNotificationOptionRow("Account activity", true),
            buildNotificationOptionRow("Opportunity", false),

            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                onPressed: () {},
                child: Text("Sign out",
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 2.2,
                        color: Colors.black)),
              ),
            ),
          ],
        ),
      ));
  }
  }
  GestureDetector buildAccountOptionRow(BuildContext context, String title){
    return GestureDetector(
      onTap: (){
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],),
                actions: [
                  FlatButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),


    );



}

    Row buildNotificationOptionRow(String title, bool isActive){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
              style: TextStyle(
      fontSize: 18,
    fontWeight: FontWeight.w500,
      color: Colors.grey[600]),
  ),
  Transform.scale(
  scale: 0.7,
      child: CupertinoSwitch(
      value: true,
      onChanged: (bool val){},
      ))
      ],
  );
    }

