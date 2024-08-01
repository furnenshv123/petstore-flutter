
import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';

import 'package:petstore_with_api/router/router.dart';

void main() {
  runApp(const PetsMarket());
}

class PetsMarket extends StatefulWidget {
  const PetsMarket({super.key});

  @override
  State<PetsMarket> createState() => _PetsMarketState();
}

class _PetsMarketState extends State<PetsMarket> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Petstore',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: const Color.fromRGBO(255, 223, 58 , 1)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppBtnStyle.mainColorApplication,
          selectedItemColor: Color(0xFF583E26),
          unselectedItemColor: Color(0xFF9E9E9E)
        )
      ),
      routerConfig: _router.config(),
    );
  }
}

