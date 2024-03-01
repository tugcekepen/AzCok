// ignore_for_file: file_names

import 'package:azcok/models/Category.dart';

List<String> arabaBakimSubCategories = ["Servis", "Temizlik"];
List<String> bebekBakimSubCategories = ["Beslenme", "İlaç", "Sağlık Kontrolü", "Diğer"];
List<String> evcilHayvanSubCategories = ["Beslenme", "İlaç", "Sağlık Kontrolü", "Diğer"];
List<String> kisiselBakimSubCategories = ["Ağız Bakım", "Cilt Bakım", "Saç Bakım", "Tırnak Bakım", "Vücut Bakım"];
List<String> kozmetikSubCategories = ["Makyaj Ürünleri", "Parfüm", "Diğer"];
List<String> dondurulmusGidaSubCategories = ["Balık", "Et", "Tavuk", "Diğer"];

List<Category> categories = [
  Category.details("Elektronik", "lib/images/elektronik.png", subCategories: [""]),
  Category.details("Araba Bakım", "lib/images/arabaBakim.png", subCategories: arabaBakimSubCategories),
  Category.details("Bebek Bakım", "lib/images/bebekBakim.png", subCategories: bebekBakimSubCategories),
  Category.details("Evcil Hayvan Bakım", "lib/images/evcilHayvan.png", subCategories: evcilHayvanSubCategories),
  Category.details("Ev", "lib/images/evTemizlik.png", subCategories: [""]),
  Category.details("Gıda", "lib/images/gida.png", subCategories: [""]),
  Category.details("İçecek", "lib/images/icecek.png", subCategories: [""]),
  Category.details("İlaç", "lib/images/ilac.png", subCategories: [""]),
  Category.details("Kişisel Bakım", "lib/images/kisiselBakim.png", subCategories: kisiselBakimSubCategories),
  Category.details("Kozmetik", "lib/images/kozmetik.png", subCategories: kozmetikSubCategories),
  Category.details("Meyve-Sebze", "lib/images/meyveSebze.png", subCategories: [""]),
  Category.details("Süt ve Süt Ürünleri", "lib/images/sutUrunleri.png", subCategories: [""]),
  Category.details("Dondurulmuş Gıda", "lib/images/dondurulmusGida.png", subCategories: dondurulmusGidaSubCategories)
];

List<Category> sortedCategories = List.from(categories)
  ..sort((a, b) => a.categoryName.compareTo(b.categoryName));
