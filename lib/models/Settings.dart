class Settings{
  late bool _chooseCategory;
  late bool _chooseSmsNotification;
  late bool _chooseEmailNotification;
  late bool _chooseSounds;
  late bool _chooseNotifications;

  bool get chooseCategory => _chooseCategory;

  set chooseCategory(bool value) {
    _chooseCategory = value;
  }

  bool get chooseSmsNotification => _chooseSmsNotification;

  set chooseSmsNotification(bool value) {
    _chooseSmsNotification = value;
  }

  bool get chooseEmailNotification => _chooseEmailNotification;

  set chooseEmailNotification(bool value) {
    _chooseEmailNotification = value;
  }

  bool get chooseSounds => _chooseSounds;

  set chooseSounds(bool value) {
    _chooseSounds = value;
  }

  bool get chooseNotifications => _chooseNotifications;

  set chooseNotifications(bool value) {
    _chooseNotifications = value;
  }
}