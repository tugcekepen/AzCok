import 'package:azcok/login_page.dart';
import 'package:flutter/material.dart';

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
          child: Form(
            child: Column(children: <Widget>[
              SizedBox(
                height: ProjectVariables(context).screenSize!.height * 0.05,
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
                              TextStyle(color: RegisterColors().textButtonColor, fontSize: 15)),
                    ),
                ],
              ),
              Container(
                height: ProjectVariables(context).screenSize!.height * 0.18,
                alignment: Alignment.bottomCenter,
                child: Image.asset("lib/images/logo-transparent-unscreen.gif",
                    width: ProjectVariables(context).logoSize!.width * 2,
                    height: ProjectVariables(context).logoSize?.height,
                    gaplessPlayback: true,
                    fit: BoxFit.fitHeight),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: RegisterBody().height(context),
                    width: RegisterBody().width(context)!*0.495,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: RegisterBody().TextFormFieldDecoration("Ad*", context),
                    ),
                  ),
                  SizedBox(width: ProjectVariables(context).screenSize!.width*0.01,),
                  SizedBox(
                    height: RegisterBody().height(context),
                    width: RegisterBody().width(context)!*0.495,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: RegisterBody().TextFormFieldDecoration("Soyad*", context),
                    ),
                  ),
                ],
              ),
              for(String text in RegisterBody().registerLabelTexts)
                Container(
                  padding: EdgeInsets.only(top: ProjectVariables(context).screenSize!.height*0.005),
                  height: RegisterBody().height(context),
                  width: RegisterBody().width(context),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: RegisterBody().TextFormFieldDecoration(text, context),
                  ),
                ),
              SizedBox(height: ProjectVariables(context).screenSize!.height*0.03,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      elevation: CustomButtonStyle().elevation,
                      foregroundColor: CustomButtonStyle().foregroundColor,
                      backgroundColor: CustomButtonStyle().backgroundColor,
                      fixedSize: CustomButtonStyle().fixedSize(context)
                  ), child: const Text("Üye Ol")),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("veya hesabınız varsa", style: LoginBody().textStyle(context)),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: CustomButtonStyle().elevation,
                      foregroundColor: CustomButtonStyle().foregroundColor,
                      backgroundColor: CustomButtonStyle().backgroundColor,
                      fixedSize: CustomButtonStyle().fixedSize(context)),
                  child: const Text("Giriş Yap")),

            ]),
          )),
    );
  }
}

class RegisterColors {
  final Color? iconColor = Colors.white;
  final Color? textButtonColor = Colors.white;
}

class RegisterBody {
  final FontWeight? registerLabelFontWeight = FontWeight.normal;
  final BorderRadius borderRadius = const BorderRadius.all(Radius.circular(50));
  final registerLabelTexts = ["E-mail*", "Şifre*", "Doğum tarihi", "Telefon numarası"];

  double? height(BuildContext context){
    final double height = MediaQuery.of(context).size.height * 0.065;
    return height;
  }

  double? width(BuildContext context){
    final double width = MediaQuery.of(context).size.width * 0.92;
    return width;
  }

  TextStyle? textStyle(BuildContext context){
    final TextStyle? loginBodyText = Theme.of(context).textTheme.bodyMedium;
    return loginBodyText;
  }

  InputDecoration TextFormFieldDecoration(String labelText, BuildContext context, {String? counterText, Widget? suffixIcon}){
    return InputDecoration(
        filled: true,
        fillColor: CustomColors().fillColor,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: RegisterBody().borderRadius
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: RegisterBody().borderRadius,
            borderSide: const BorderSide().copyWith(color: CustomColors().borderFocusColor)
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: CustomColors().labelColor,
            fontWeight: RegisterBody().registerLabelFontWeight)
    );
  }
}