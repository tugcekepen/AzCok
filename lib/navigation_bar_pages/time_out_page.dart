import 'package:azcok/components/bottom_navigation_bar.dart';
import 'package:azcok/custom.dart';
import 'package:azcok/models/Quantity.dart';
import 'package:flutter/material.dart';

class TimeOutPage extends StatefulWidget {
  const TimeOutPage({super.key});

  @override
  State<TimeOutPage> createState() => _TimeOutPageState();
}

class _TimeOutPageState extends State<TimeOutPage> {
  List<String> quantities = [
    Quantity.adet,
    Quantity.gram,
    Quantity.kilogram,
    Quantity.litre,
    Quantity.paket,
    Quantity.kutu,
    Quantity.bardak
  ];

  late String selectedQuantity;

  @override
  void initState() {
    super.initState();
    selectedQuantity = quantities.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: customBottomNavigationBar(context),
    );
  }
}
