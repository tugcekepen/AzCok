import 'package:flutter/material.dart';

class ProjectVariables {
  Size? screenSize;
  Size? logoSize;
  double? pageTopHeight;
  EdgeInsetsGeometry? padding;

  ProjectVariables(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    logoSize = MediaQuery.of(context).size * 0.15;
    pageTopHeight = MediaQuery.of(context).size.height * 0.04;
    padding = EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, right: MediaQuery.of(context).size.width * 0.03);
  }
}
class CustomColors {
  final Color? labelColor = Colors.grey.shade600;
  final Color? borderFocusColor = Colors.grey.shade600;
  final Color? fillColor = Colors.white;
}

class CustomButtonStyle {
  final double? elevation = 5;
  final Color? foregroundColor = Colors.white;
  final Color? backgroundColor = Colors.grey.shade700;

  Size? fixedSize(BuildContext context){
    final Size fixedSize = Size.fromWidth(MediaQuery.of(context).size.width*0.92);
    return fixedSize;
  }
}