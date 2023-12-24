class Category{
  late final String _categoryName;
  late final String? _description;
  late String _categoryPic;
  int _totalProduct = 0;
  late List<String>? _subCategories;

  Category(categoryName, categoryPic, {description, subCategories}){
    _categoryName = categoryName;
    _categoryPic = categoryPic;
    _description = description;
    _subCategories = subCategories;
  }

  String get categoryName => _categoryName;

  set categoryName(String categoryName){
    _categoryName = categoryName;
  }

  String? get description => _description;

  set description(String? value) {
    _description = value;
  }

  String get categoryPic => _categoryPic;

  set categoryPic(String value) {
    _categoryPic = value;
  }

  int get totalProduct => _totalProduct;

  List<String>? get subCategories => _subCategories;

  set subCategories(List<String>? value) {
    _subCategories = value;
  }

  void addProduct() {
    _totalProduct++;
  }

  void removeProduct() {
    if (totalProduct > 0) {
      _totalProduct--;
    }
  }
}