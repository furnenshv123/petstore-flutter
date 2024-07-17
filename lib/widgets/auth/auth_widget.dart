import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    final txtStlOnYlwback = const TextStyle(
        fontWeight: FontWeight.w800, color: Color.fromRGBO(62, 62, 62, 1));

    return Scaffold(
      appBar: AppBar(
          title: Container(
              padding: EdgeInsets.only(left: 10),
              child: Text("Вход/Регистрация", style: txtStlOnYlwback))),
      body: ListView(
        children: [_FormWidget(),
        _FooterWidgetSocial(),
        _FooterAboutWidget()],
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: '+',
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

class _FooterWidgetSocial extends StatelessWidget {
  const _FooterWidgetSocial({super.key});

  @override
  Widget build(BuildContext context) {
    final borderForContainer = BorderSide(width: 3,
        color: Color.fromRGBO(62, 62, 62, 0.25));
    final paddingForSocCont = EdgeInsets.symmetric(vertical: 30);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 3,
            color: Color.fromRGBO(62, 62, 62, 0.25)
          )
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: paddingForSocCont,
              child: Image.asset("assets/images/20200512141345!Instagram_icon.png", height: 60, width: 60,)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                border: Border(
                  left: borderForContainer,
                  right: borderForContainer
                )
              ),
              child: Image.asset("assets/images/Facebook_Logo_2023.png",
                height: 60,
                width: 60,)),
          Container(
              padding: paddingForSocCont,
              child: Image.asset("assets/images/145813.png", height: 60, width: 60,)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  border: Border(
                      left: borderForContainer,
                      right: borderForContainer
                  )
              ),
              child: Image.asset("assets/images/Telegram-icon-on-transparent-background-PNG.png",
                height: 60,
                width: 60,)),
          Container(
              padding: paddingForSocCont,
              child: Image.asset("assets/images/png-transparent-x-icon-ex-twitter-tech-companies-social-media-thumbnail.png", height: 60, width: 60,)),
        ],
      ),
    );
  }
}

class _FooterAboutWidget extends StatelessWidget {
  const _FooterAboutWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('О компании'),
                Text('Магазины'),
                Text('Новости'),
                Text('О нас'),
                Text('Вакансии'),
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Покупателям'),
                Text('Бренды'),
                Text('Доставка'),
                Text('Оплата'),
                Text('Оферта'),
              ],)
            ],),
            Row(children: [
              Column(children: [

              ],),
              Column(children: [

              ],)
            ],),
          ],
        ),
    );
  }
}
