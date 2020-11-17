class User1 {
  String _username;
  String _password;

  //constructor below
  User1(this._username, this._password);

  User1.map(dynamic obj) {
    //this is the data coming from the API
    this._username = obj['username'];
    this._password = obj['password'];
  }

  String get username => _username;
  String get password => _password;

  //variable created

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;
    return map;
  }
}