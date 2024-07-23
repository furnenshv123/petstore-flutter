import 'package:flutter/material.dart';
import 'package:petstore_with_api/widgets/auth/auth_widget.dart';
import 'package:petstore_with_api/widgets/main_screen/main_screen_widget.dart';

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

      ),
      routes: {
        '/auth':(context) => AuthWidget(),
        '/main_screen':(context) => MainScreenWidget()
      },
      initialRoute: '/auth',
    );
  }
}

