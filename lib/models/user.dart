class User {
  int id;
  String name;
  String username;
  String password;
  String flaglogged;



  User(this.id, this.name, this.username, this.password, this.flaglogged);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'flaglogged': flaglogged,

    };
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    username = map['usernmae'];
    password = map['password'];
    flaglogged = map['flaglogged'];
  }

}
