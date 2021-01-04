
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
      'flaglogged': flaglogged
    };
    return map;
  }



// Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString()  {
    return 'User{id: $id, name: $name, username: $username, password: $password, flaglogged: $flaglogged}';
  }
}
