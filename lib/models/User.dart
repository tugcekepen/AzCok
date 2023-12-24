class User{
  late String _userName;
  late String _userLastName;
  late String? _email;
  late int? _telNo;
  late DateTime _birthday;
  late String _password;
  late String _city;
  late bool _isPremium;

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  String get userLastName => _userLastName;

  set userLastName(String value) {
    _userLastName = value;
  }

  String? get email => _email;

  set email(String? value) {
    _email = value;
  }

  int? get telNo => _telNo;

  set telNo(int? value) {
    _telNo = value;
  }

  DateTime get birthday => _birthday;

  set birthday(DateTime value) {
    _birthday = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get city => _city;

  set city(String value) {
    if(value.isEmpty) {
      _city = "İstanbul";
    }
    _city = value;
  }

  bool get isPremium => _isPremium;

  set isPremium(bool value) {
    _isPremium = value;
  }

  String userPrint() {
    return '$_userName $_userLastName';
  }
}