class User {
  User({name, age}) : _name = name, _age = age;
  String _name;
  int _age;

  String get name => _name;

  int get age => _age;
}
