import 'package:azcok/components/bottom_navigation_bar.dart';
import 'package:azcok/custom.dart';
import 'package:azcok/data/Categories.dart';
import 'package:azcok/models/Category.dart';
import 'package:azcok/models/Quantity.dart';
import 'package:flutter/material.dart';

class ProductAddPage extends StatefulWidget {
  const ProductAddPage({super.key});

  @override
  State<ProductAddPage> createState() => _ProductAddPage();
}

class _ProductAddPage extends State<ProductAddPage> {
  final String hintProductName = "Ürün Adı";
  final String hintQuantity = "Adet/Ağırlık";
  final String hintEXP = "SKT";
  final String hintRCD= "TETT";

  List<String> quantities = [
    Quantity.adet,
    Quantity.gram,
    Quantity.kilogram,
    Quantity.litre,
    Quantity.paket,
    Quantity.kutu,
    Quantity.bardak
  ];

  late String selectedQuantity = quantities.first;
  String selectedCategory = sortedCategories.first.categoryName;
  String selectedSubCategory = sortedCategories.first.subCategories!.first;
  List<String> subCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: ProjectVariables(context).pageTopHeight,),
        Padding(
          padding: ProjectVariables(context).padding!,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset("lib/images/app_title.png",
                alignment: Alignment.bottomLeft, height: 30,),
              ),
              Expanded(
                flex:1,
                child: Image.asset("lib/images/bebekBakim.png", height: 50,),)
            ]
            
          ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  height: MediaQuery.of(context).size.height / 2,
                ),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 19),
                child: Container(
                    height: MediaQuery.of(context).size.height / 7,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200])),
              )),
              Center(
                child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 17),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[350]),
                      child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 255, 157, 29),
                        size: MediaQuery.of(context).size.height / 7.6,
                      ),
                    )),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.97),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 14,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[350])),
                ),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4.5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomColors().fillColor,
                        hintText: hintProductName,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: CustomColors().labelColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              )),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3.5,
                        left: MediaQuery.of(context).size.width / 50),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            icon: _CustomDropdownButton.buttonIcon,
                            iconSize: _CustomDropdownButton.buttonIconSize,
                            value: selectedCategory,
                            borderRadius: BorderRadius.circular(10),
                            isExpanded: true,
                            style: Theme.of(context).textTheme.bodyLarge,
                            items: sortedCategories.map((Category category) {
                              return DropdownMenuItem<String>(
                                value: category.categoryName,
                                child: Text(category.categoryName),
                              );
                            }).toList(),
                            elevation: _CustomDropdownButton.buttonElevation,
                            dropdownColor: Colors.blue[50],
                            onChanged: (String? value) {
                              setState(() {
                                selectedCategory = value!;
                                subCategories = sortedCategories
                                    .firstWhere((category) =>
                                        category.categoryName ==
                                        selectedCategory)
                                    .subCategories!;
                                selectedSubCategory = subCategories.first;
                                print(selectedCategory);
                                print(selectedSubCategory);
                              });
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3.5,
                        left: MediaQuery.of(context).size.width / 50),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            icon: _CustomDropdownButton.buttonIcon,
                            iconSize: _CustomDropdownButton.buttonIconSize,
                            value: selectedSubCategory,
                            borderRadius: BorderRadius.circular(10),
                            isExpanded: true,
                            style: Theme.of(context).textTheme.bodyLarge,
                            items: subCategories.map((String subCategory) {
                              return DropdownMenuItem<String>(
                                value: subCategory,
                                child: Text(subCategory),
                              );
                            }).toList(),
                            elevation: _CustomDropdownButton.buttonElevation,
                            dropdownColor: Colors.blue[50],
                            onChanged: (String? value) {
                              setState(() {
                                selectedSubCategory = value!;
                                print(selectedSubCategory);
                              });
                            }),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.86,
                    left: MediaQuery.of(context).size.width / 50),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: CustomColors().fillColor,
                        hintText: hintQuantity,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: CustomColors().labelColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.8,
                    left: MediaQuery.of(context).size.width / 1.57),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: _CustomDropdownButton.buttonIcon,
                    iconSize: _CustomDropdownButton.buttonIconSize,
                    isDense: true,
                    alignment: AlignmentDirectional.center,
                      value: selectedQuantity,
                      items: quantities
                          .map((String q) => DropdownMenuItem(
                                value: q,
                                child: Text(q),
                              ))
                          .toList(),
                      elevation: _CustomDropdownButton.buttonElevation,
                      dropdownColor: Colors.blue[50],
                      style: Theme.of(context).textTheme.bodyLarge,
                      borderRadius: BorderRadius.circular(10),
                      onChanged: (String? value) {
                        setState(() {
                          selectedQuantity = value!;
                        });
                      }),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2.42,
                        left: MediaQuery.of(context).size.width / 50),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: CustomColors().fillColor,
                            hintText: hintEXP,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: CustomColors().labelColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2.42,
                        left: MediaQuery.of(context).size.width / 50),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: CustomColors().fillColor,
                            hintText: hintRCD,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: CustomColors().labelColor),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
        ],
      ),
      bottomNavigationBar: customBottomNavigationBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 5,
        child: Icon(
          Icons.check,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _CustomDropdownButton {
  static const Icon buttonIcon = Icon(Icons.keyboard_arrow_down);
  static const double buttonIconSize = 22;
  static const int buttonElevation = 5;
}