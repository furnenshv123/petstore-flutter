
import 'package:flutter/material.dart';

import '../../../Theme/app_btn_style.dart';
import '../../../resources/resources.dart';

class FooterWidgetSocial extends StatelessWidget {
  const FooterWidgetSocial({super.key});

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
              child: Image(
                image: AssetImage(Images.facebookIcon),
                height: 60,
                width: 60,
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  border: Border(
                      left: borderForContainer, right: borderForContainer)),
              child: Image(
                image: AssetImage(Images.instagramIcon),
                height: 60,
                width: 60,
              )),
          Container(
              padding: paddingForSocCont,
              child: Image(
                image: AssetImage(Images.vkPicture),
                height: 60,
                width: 60,
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              decoration: BoxDecoration(
                  border: Border(
                      left: borderForContainer, right: borderForContainer)),
              child: Image(
                image: AssetImage(Images.telegramIcon),
                height: 60,
                width: 60,
              )),
          Container(
              padding: paddingForSocCont,
              child: Image(
                image: AssetImage(Images.twitterIcon),
                height: 60,
                width: 60,
              )),
        ],
      ),
    );
  }
}

class FooterAboutWidget extends StatelessWidget {
  const FooterAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listOfFooterNamesOne = [
      'О компании',
      'Магазины',
      'Новости',
      'О нас',
      'Вакансии',
      'Ваш город',
      'Минск',
      'Изменить\nнастройки\ncookies'
    ];
    final listOfFooterNamesTwo = [
      'Покупателям',
      'Бренды',
      'Доставка',
      'Оплата',
      'Оферта',
      'Документы',
      'Положение\nо скидках',
      'Конфиденциальность'
    ];

    return Container(
        padding: EdgeInsets.only(left: 16, top: 30, right: 20, bottom: 55),
        color: TxtWidgColors.BackGroundFooter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listOfFooterNamesOne
                      .map((text) => text == 'О компании' || text == 'Ваш город'
                      ? Column(
                    children: [
                      SizedBox(height: 25,),
                      Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                    ],
                  )
                      : Text(
                    text,
                    style: TxtWidgColors.FooterTxtStyle,
                  )).toList()
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: listOfFooterNamesTwo
                    .map((text) => text == 'Покупателям' || text == 'Документы'
                    ? Column(
                  children: [
                    SizedBox(height: 25,),
                    Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                  ],
                )
                    : Text(
                  text,
                  style: TxtWidgColors.FooterTxtStyle,
                )).toList(),
              ),
            )
          ],
        ));
  }
}