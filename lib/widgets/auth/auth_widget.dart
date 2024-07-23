import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';
import 'package:petstore_with_api/resources/resources.dart';

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
        children: [_FormWidget(), _FooterWidgetSocial(), _FooterAboutWidget()],
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
    return errorText != null? Container(
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
                controller: _phoneTextController,
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
    ): _PasswordFormWidget();
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
              onPressed: (){},
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
    final borderForContainer =
        BorderSide(width: 3, color: Color.fromRGBO(62, 62, 62, 0.25));
    final paddingForSocCont = EdgeInsets.symmetric(vertical: 30);
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  width: 3, color: Color.fromRGBO(62, 62, 62, 0.25)))),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: paddingForSocCont,
              child: Image(image: AssetImage(Images.facebookIcon)
                ,
                height: 60,
                width: 60,
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  border: Border(
                      left: borderForContainer, right: borderForContainer)),
              child: Image(image: AssetImage(Images.instagramIcon)
                ,
                height: 60,
                width: 60,
              )),
          Container(
              padding: paddingForSocCont,
              child: Image(image: AssetImage(
                Images.vkPicture),
                height: 60,
                width: 60,
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  border: Border(
                      left: borderForContainer, right: borderForContainer)),
              child: Image(image: AssetImage(
                Images.telegramIcon),
                height: 60,
                width: 60,
              )),
          Container(
              padding: paddingForSocCont,
              child: Image(image: AssetImage(
                Images.twitterIcon),
                height: 60,
                width: 60,
              )),
        ],
      ),
    );
  }
}

class _FooterAboutWidget extends StatelessWidget {
  const _FooterAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listOfFooterNames = [
      'О компании',
      'Магазины',
      'Новости',
      'О нас',
      'Вакансии'
    ];
    final listOfFooterNamesTwo = [
      'Ваш город',
      'Минск',
      'Изменить\nнастройки\ncookies',
    ];
    final listOfFooterNamesThree = [
      'Документы',
      'Положение\nо скидках',
      'Конфиденциальность',
    ];
    return Container(
      padding: EdgeInsets.only(left: 16, top: 57, right: 20, bottom: 55),
      color: TxtWidgColors.BackGroundFooter,
      child: Column(
        children: [
          SizedBox(),
          Container(
            padding: EdgeInsets.only(bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: listOfFooterNames
                        .map((text) => text == 'О компании'
                            ? Text(
                                text,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            : Text(
                                text,
                                style: TxtWidgColors.FooterTxtStyle,
                              ))
                        .toList()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Покупателям',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Text('Бренды', style: TxtWidgColors.FooterTxtStyle),
                    Text('Доставка', style: TxtWidgColors.FooterTxtStyle),
                    Text('Оплата', style: TxtWidgColors.FooterTxtStyle),
                    Text('Оферта', style: TxtWidgColors.FooterTxtStyle),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 45),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: listOfFooterNamesTwo
                          .map((text) => text == 'Ваш город'
                              ? Text(
                                  text,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              : Text(
                                  text,
                                  style: TxtWidgColors.FooterTxtStyle,
                                ))
                          .toList()),
                ),
                Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: listOfFooterNamesThree
                        .map((text) => text == 'Документы'
                            ? Text(
                                text,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            : Text(
                                text,
                                style: TxtWidgColors.FooterTxtStyle,
                                overflow: TextOverflow.ellipsis,
                              ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
