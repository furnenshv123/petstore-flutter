import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    final txtStlOnYlwback = const TextStyle(fontWeight: FontWeight.w800,
        color: Color.fromRGBO(62, 62, 62, 1));

    return Scaffold(
      appBar: AppBar(
          title: Container(
            padding: EdgeInsets.only(left: 10),
              child: Text("Вход/Регистрация",
                style: txtStlOnYlwback
              ))
      ),
      body: ListView(
        children: [
          _FormWidget()
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [BoxShadow(
          color: Colors.black12,
          blurRadius: 10
        )],
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.close, size: 25,),
              onPressed: (){},)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.centerLeft,
            child: Text('Введите номер телефона', style: TextStyle(fontSize: 16),),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(hintText: '+'),
              )),
          SizedBox(height: 30,),
          Container(
            child: ElevatedButton(
              onPressed: (){},
              child: Text('Войти', style: TextStyle(color: Color.fromRGBO(62, 62, 62, 1), fontWeight: FontWeight.w700),),
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll<double>(7),
                shadowColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(254, 204, 26, 1)),
                padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(vertical: 20, horizontal: 80)),
                  backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(255, 223, 58 , 1)),
              ),),
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}

