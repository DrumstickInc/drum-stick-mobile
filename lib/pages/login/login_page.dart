import 'package:flutter/material.dart';
import 'package:flutter_app/data/database-helper.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/pages/login/login_presenter.dart';
import 'package:flutter_app/utils/color.dart';
import 'package:flutter_app/widgets/header_container.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;

  LoginPagePresenter _presenter;

  _LoginPageState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _register() {
    Navigator.of(context).pushNamed("/register");
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_email, _password);
      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

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
            "  Login  ", style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,

          ),
          ),
    );
    var registerBtn = new MaterialButton(
      onPressed: _register,
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
                  onSaved: (val) => _email = val,
                  decoration: new InputDecoration(
                      border: OutlineInputBorder(),
                    hintText: "Email",
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
                  onSaved: (val) => _password = val,
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                )

              )
            ],
          ),
        ),
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),

        registerBtn
      ],

    );

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      key: scaffoldKey,
      body :Container(
          child: Column(
            children: <Widget>[
              HeaderContainer("Login"),

              Container(
                  child: loginForm
              )
            ],
          )
      ),

    );
  }


  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
    if(user.username == ""){
      _showSnackBar("Login not successful");
    }else{
      _showSnackBar(user.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if(user.flaglogged == "logged"){
      print("Logged");
      Navigator.of(context).pushNamed("/home");
    }else{
      print("Not Logged");
    }
  }
}
