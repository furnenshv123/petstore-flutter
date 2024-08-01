
import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _phoneTextController = TextEditingController();

  String? errorText = 'Не существует такого телефона';

  void PhoneNumberInitialize() {
    final phoneNumber = _phoneTextController.text;

    if (phoneNumber == '62030') {
      errorText = null;
    }
    print(phoneNumber);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return errorText != null
        ? Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 25,
                ),
                onPressed: () {},
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              'Введите номер телефона',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                initialValue: '+375',
                //controller: _phoneTextController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            child: ElevatedButton(
              onPressed: PhoneNumberInitialize,
              child: Text(
                'Войти',
                style: TextStyle(
                    color: Color.fromRGBO(62, 62, 62, 1),
                    fontWeight: FontWeight.w700),
              ),
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll<double>(7),
                shadowColor: MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(254, 204, 26, 1)),
                padding: MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 80)),
                backgroundColor: AppBtnStyle.mainColorBtn,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    )
        : _PasswordFormWidget();
  }
}

class _PasswordFormWidget extends StatefulWidget {
  const _PasswordFormWidget({super.key});

  @override
  State<_PasswordFormWidget> createState() => _PasswordFormWidgetState();
}

class _PasswordFormWidgetState extends State<_PasswordFormWidget> {
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 25,
                ),
                onPressed: () {},
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              'Введите пароль',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Войти',
                style: TextStyle(
                    color: Color.fromRGBO(62, 62, 62, 1),
                    fontWeight: FontWeight.w700),
              ),
              style: ButtonStyle(
                elevation: MaterialStatePropertyAll<double>(7),
                shadowColor: MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(254, 204, 26, 1)),
                padding: MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 80)),
                backgroundColor: AppBtnStyle.mainColorBtn,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}