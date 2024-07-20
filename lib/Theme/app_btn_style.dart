import 'package:flutter/material.dart';

abstract class AppBtnStyle{
  static final mainColorBtn = MaterialStatePropertyAll<Color>(Color.fromRGBO(255, 223, 58 , 1));
}

abstract class TxtWidgColors{
  static final BackGroundFooter = Color(0xFF252525);
  static final FooterTxtStyle = TextStyle(color: Color(0xFF9E9E9E),fontSize: 12);
}