// ignore_for_file: file_names

import 'package:azcok/models/Category.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCategory extends Mock implements Category {}

void main() {
  late Category mockCategory;
  late Category category;

  setUp(() {
    mockCategory = MockCategory();
    category = Category();
  });

  group("Category fields", () {
    test('Category name', () {
      //Assert
      when(() => mockCategory.categoryName).thenReturn('Gıda');

      expect(mockCategory.categoryName, 'Gıda');
      expect(category.categoryName, 'Diğer');
    });

    test('Category product count', () {
      when(() => mockCategory.productCount).thenReturn(1);

      expect(mockCategory.productCount, 1);
      expect(category.productCount, 1);
    });

    test('Category description', () {
      when(() => mockCategory.description).thenReturn('Gıda ürünleri');

      expect(mockCategory.description, 'Gıda ürünleri');
      expect(category.description, null);
    });

    test('Category picture', () {
      when(() => mockCategory.categoryPic).thenReturn('lib/images/gida.png');

      expect(mockCategory.categoryPic, 'lib/images/gida.png');
      expect(category.categoryPic, 'lib/images/logo-transparent.png');
    });

    test('Category subcategories', () {
      when(() => mockCategory.subCategories).thenReturn(['Meyve', 'Sebze']);

      expect(mockCategory.subCategories, ['Meyve', 'Sebze']);
      expect(category.subCategories, null);
    });
  });

  
}