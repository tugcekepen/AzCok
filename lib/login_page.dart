import 'package:azcok/register_page.dart';
import 'package:flutter/material.dart';

import 'custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _SplashScState();
}

class _SplashScState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //klavye açıldığında overflow'u önlemek için
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
          child: Column(
            children: <Widget>[
              Container(
                height: ProjectVariables(context).screenSize!.height * 0.30,
                alignment: Alignment.bottomCenter,
                child: Image.asset("lib/images/logo-transparent-unscreen.gif",
                    width: ProjectVariables(context).logoSize!.width * 2,
                    height: ProjectVariables(context).logoSize?.height,
                    gaplessPlayback: true,
                    fit: BoxFit.fitHeight),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: LoginBody().height(context),
                width: LoginBody().width(context),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: CustomColors().fillColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: LoginBody().borderRadius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: LoginBody().borderRadius,
                      borderSide: const BorderSide().copyWith(color: CustomColors().borderFocusColor)
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: "Kullanıcı Adı*",
                    labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: CustomColors().labelColor,
                      fontWeight: LoginBody().loginLabelFontWeight)),
                ),
              ),
              SizedBox(height: ProjectVariables(context).screenSize!.height*0.01,),
              SizedBox(
                height: LoginBody().height(context),
                width: LoginBody().width(context),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 8,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: CustomColors().fillColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: LoginBody().borderRadius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: LoginBody().borderRadius,
                      borderSide: const BorderSide().copyWith(color: CustomColors().borderFocusColor)
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: const Icon(Icons.visibility_outlined),
                    suffixIconColor: Colors.black87,
                    labelText: "Şifre*",
                    labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: CustomColors().labelColor,
                      fontWeight: LoginBody().loginLabelFontWeight),
                    counterText: '',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: (){},
                      child: Text("Şifremi unuttum", style: LoginBody().textStyle(context)),
                    ),
                  ),
                  SizedBox(
                    width: 165,
                    child: Row(
                      children: [
                        Text("Beni hatırla", style: LoginBody().textStyle(context)),
                        const SizedBox(width: 5,),
                        Switch(value: true, onChanged: (value){}, activeColor: CustomButtonStyle().backgroundColor,)
                    ],))
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: CustomButtonStyle().elevation,
                  foregroundColor: CustomButtonStyle().foregroundColor,
                  backgroundColor: CustomButtonStyle().backgroundColor,
                  fixedSize: CustomButtonStyle().fixedSize(context)
              ), child: const Text("Giriş Yap")),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("VEYA", style: LoginBody().textStyle(context)),
              ),
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: CustomButtonStyle().elevation,
                  foregroundColor: CustomButtonStyle().foregroundColor,
                  backgroundColor: CustomButtonStyle().backgroundColor,
                  fixedSize: CustomButtonStyle().fixedSize(context)
                ), child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(flex: 1,child: Icon(Icons.mail_outline)),
                      Expanded(flex: 200,child: Text("Gmail ile Giriş Yap", textAlign: TextAlign.center,)),
                  ],)),
              SizedBox(
                height: ProjectVariables(context).screenSize!.height*0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Hesabın yok mu?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    }, child: const Text("KAYDOL", style: TextStyle(color: Colors.white),))
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginBody {
  final FontWeight? loginLabelFontWeight = FontWeight.normal;
  final BorderRadius borderRadius = const BorderRadius.all(Radius.circular(50));

  double? height(BuildContext context){
    final double height = MediaQuery.of(context).size.height * 0.07;
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
}