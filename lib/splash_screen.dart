import 'package:azcok/login_page.dart';
import 'package:flutter/material.dart';

class SplashSc extends StatefulWidget {
  const SplashSc({Key? key}) : super(key: key);

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final logoSize = MediaQuery.of(context).size * 0.2;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.pink, Colors.pink.shade100],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: Center(
        child: Image.asset("lib/images/logo-transparent-unscreen.gif",
            width: logoSize.width * 2,
            height: logoSize.height,
            gaplessPlayback: true,
            fit: BoxFit.fitHeight),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const LoginPage(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });
  }
}
