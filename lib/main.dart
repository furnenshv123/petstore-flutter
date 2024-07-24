import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';
import 'package:petstore_with_api/features/auth/view/auth_widget.dart';

void main() {
  runApp(const PetsMarket());
}

class PetsMarket extends StatelessWidget {
  const PetsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: const Color.fromRGBO(255, 223, 58 , 1)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppBtnStyle.mainColorApplication,
          selectedItemColor: Color(0xFF583E26),
          unselectedItemColor: Color(0xFF9E9E9E)
        )
      ),

    );
  }
}

