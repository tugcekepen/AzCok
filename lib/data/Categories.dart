import 'package:azcok/models/Category.dart';

List<String> arabaBakimSubCategories = ["Servis", "Temizlik"];
List<String> bebekBakimSubCategories = ["Beslenme", "İlaç", "Sağlık Kontrolü", "Diğer"];
List<String> evcilHayvanSubCategories = ["Beslenme", "İlaç", "Sağlık Kontrolü", "Diğer"];
List<String> kisiselBakimSubCategories = ["Ağız Bakım", "Cilt Bakım", "Saç Bakım", "Tırnak Bakım", "Vücut Bakım"];
List<String> kozmetikSubCategories = ["Makyaj Ürünleri", "Parfüm", "Diğer"];
List<String> dondurulmusGidaSubCategories = ["Balık", "Et", "Tavuk", "Diğer"];

List<Category> categories = [
  Category("Elektronik", "lib/images/elektronik.png", subCategories: [""]),
  Category("Araba Bakım", "lib/images/arabaBakim.png", subCategories: arabaBakimSubCategories),
  Category("Bebek Bakım", "lib/images/bebekBakim.png", subCategories: bebekBakimSubCategories),
  Category("Evcil Hayvan Bakım", "lib/images/evcilHayvan.png", subCategories: evcilHayvanSubCategories),
  Category("Ev", "lib/images/evTemizlik.png", subCategories: [""]),
  Category("Gıda", "lib/images/gida.png", subCategories: [""]),
  Category("İçecek", "lib/images/icecek.png", subCategories: [""]),
  Category("İlaç", "lib/images/ilac.png", subCategories: [""]),
  Category("Kişisel Bakım", "lib/images/kisiselBakim.png", subCategories: kisiselBakimSubCategories),
  Category("Kozmetik", "lib/images/kozmetik.png", subCategories: kozmetikSubCategories),
  Category("Meyve-Sebze", "lib/images/meyveSebze.png", subCategories: [""]),
  Category("Süt ve Süt Ürünleri", "lib/images/sutUrunleri.png", subCategories: [""]),
  Category("Dondurulmuş Gıda", "lib/images/dondurulmusGida.png", subCategories: dondurulmusGidaSubCategories)
];

List<Category> sortedCategories = List.from(categories)
  ..sort((a, b) => a.categoryName.compareTo(b.categoryName));
