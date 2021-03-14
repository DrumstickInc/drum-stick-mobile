import 'package:flutter/material.dart';
import 'package:flutter_app/data/database-helper.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/widgets/header_container.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState  extends State<RegisterPage> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, _password;



  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new MaterialButton(
      onPressed: _submit,
      minWidth: double.infinity,
      height: 60,
      color: Colors.grey,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        "Create New Account", style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.white,

      ),
      ),
    );


    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  onSaved: (val) => _name= val,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email/ Username",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
            ],
          ),
        ),
        loginBtn
      ],
    );

    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text("Register"),
      ),*/
      resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      body :Container(
          child: Column(
            children: <Widget>[
              HeaderContainer("Register"),

              Container(
                  child: loginForm
              )
            ],
          )
      ),

    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit(){
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(_name, _username, _password, null);
        var db = new DatabaseHelper();
        db.createUser(user);
        _isLoading = false;
        Navigator.of(context).pushNamed("/login");
      });
    }
  }
}