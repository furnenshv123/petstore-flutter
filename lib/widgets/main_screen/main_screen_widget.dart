

import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  void AuthorizeWidget(){
    Navigator.of(context).pushNamed('/auth');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: AuthorizeWidget, child: Text('Авторизация'))
        ],
      ),
    );
  }
}
