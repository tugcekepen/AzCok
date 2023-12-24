import 'package:azcok/models/Category.dart';
import 'package:azcok/models/Quantity.dart';

class Product{
  late String _productName;
  late Category _productCategory;
  late bool _isPacked;
  late Quantity? _amount;
  late DateTime _exp;
  late int? _notification;

  int? get notification => _notification;

  set notification(int? value) {
    _notification = value;
  }

  String get productName => _productName;

  set productName(String value) {
    _productName = value;
  }

  Category get productCategory => _productCategory;

  set productCategory(Category value) {
    _productCategory = value;
  }

  bool get isPacked => _isPacked;

  set isPacked(bool value) {
    _isPacked = value;
  }

  Quantity? get amount => _amount;

  set amount(Quantity? value) {
    _amount = value;
  }

  DateTime get exp => _exp;

  set exp(DateTime value) {
    _exp = value;
  }
}