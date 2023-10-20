import 'package:azcok/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //klavye açıldığında overflow'u önlemek için
      body: Container(
          width: ProjectVariables(context).screenSize?.width,
          height: ProjectVariables(context).screenSize?.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pink, Colors.pink.shade100],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: Column(children: <Widget>[
            SizedBox(
              height: ProjectVariables(context).screenSize!.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: RegisterColors().iconColor,
                        )),
                TextButton(
                    onPressed: () {},
                    child: Text("Neden Kayıt Olmalıyım?",
                        style:
                            TextStyle(color: RegisterColors().textButtonColor)),
                  ),
              ],
            )
          ])),
    );
  }
}

class RegisterColors {
  final Color? iconColor = Colors.white;
  final Color? textButtonColor = Colors.white;
}
