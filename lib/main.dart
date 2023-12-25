import 'package:azcok/navigation_bar_pages/categories.dart';
import 'package:azcok/navigation_bar_pages/home_page.dart';
import 'package:azcok/navigation_bar_pages/time_out_page.dart';
import 'package:azcok/product_add_page.dart';
import 'package:azcok/splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/date_symbol_data_local.dart'; //initializeDateFormatting() metodu için import edildi

void main() {
  initializeDateFormatting().then((value) => runApp(const MyApp())); //locale: 'tr_TR' 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 2, 15, 139),
        appBarTheme: const AppBarTheme(centerTitle: true),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color.fromARGB(255, 2, 15, 139)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 255, 157, 29),
            shape: CircleBorder(),
            elevation: 5,
            iconSize: 30,),
        fontFamily: "Montserrat",
        useMaterial3: true,
      ),
      home: const SplashSc(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => const MyHomePage(),
        '/product_add_page': (context) => const ProductAddPage(),
        '/categories':(context) => const CategoriesPage(),
        '/time_out_page': (context) => const TimeOutPage()
      },
    );
  }
}
