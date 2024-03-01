import 'package:flutter/material.dart';

import '../navigation_bar_pages/home_page.dart';

BottomNavigationBar customBottomNavigationBar(BuildContext context) =>
    BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Ana Sayfa",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.category), label: "Kategoriler"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Ara"),
        BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Süre Bitti"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Profil")
      ],
      onTap: (currentIndex) {
        switch (currentIndex) {
          case 0:
            Navigator.pushNamed(context, '/home_page');
            break;
          case 1:
            Navigator.pushNamed(context, '/categories');
            break;
          case 2:
            Navigator.pushNamed(context, '/time_out_page');
            break;
          case 3:
            Navigator.pushNamed(context, '/time_out_page');
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
            break;
        }
      },
    );
