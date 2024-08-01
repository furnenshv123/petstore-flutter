import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppBtnStyle.mainColorApplication,
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: Text('Вход/Регистрация', style: TextStyle(
        color: TxtWidgColors.BackGroundFooter, fontWeight: FontWeight.bold,
        fontSize: 20
      ),),
    );
  }
}
