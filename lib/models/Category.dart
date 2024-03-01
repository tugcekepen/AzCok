// ignore_for_file: file_names

class Category {
  late String _categoryName;
  late String? _description;
  late String _categoryPic;
  int _totalProduct = 0;
  late List<String>? _subCategories;

  Category() {
    _categoryName = 'Diğer';
    _categoryPic = 'lib/images/logo-transparent.png';
    _description = null;
    _subCategories = null;
    _totalProduct++;
  }

  Category.details(categoryName, categoryPic, {description, subCategories}) {
    _categoryName = categoryName;
    _categoryPic = categoryPic;
    _description = description;
    _subCategories = subCategories;
    _totalProduct++;
  }

  int get productCount => _totalProduct;

  String get categoryName => _categoryName;

  set categoryName(String value) {
    if (value.isEmpty) {
      throw Exception('Kategori adı boş geçilemez.');
    } else if (value.length < 2 && value.length > 20) {
      throw Exception('Kategori adı en az 2, en çok 20 karakter olmalıdır.');
    } else {
      _categoryName = value;
    }
  }

  String? get description => _description;

  set description(String? value) {
    _description = value;
  }

  String get categoryPic => _categoryPic;

  set categoryPic(String value) {
    if (value.isEmpty) {
      throw Exception('Kategori resmi boş geçilemez.');
    } else {
      _categoryPic = value;
    }
  }

  List<String>? get subCategories => _subCategories;

  set subCategories(List<String>? value) {
    if (value == [] || value!.isEmpty) {
      throw Exception('Boş liste atanamaz.');
    } else {
      for (var i = 0; i < value.length; i++) {
        if (value[i].isEmpty) {
          throw Exception('Alt kategori adı boş geçilemez.');
        } else if (value[i].length < 2 && value[i].length > 20) {
          throw Exception(
              'Alt kategori adı en az 2, en çok 20 karakter olmalıdır.');
        } else {
          _subCategories = value;
        }
      }
    }
  }

  void addProduct() {
    _totalProduct++;
  }

  void removeProduct() {
    if (productCount > 0) {
      _totalProduct--;
    } else {
      throw Exception(
          'Kategoride hiç ürün bulunmamaktadır. Çıkartma yapılamaz.');
    }
  }
}
