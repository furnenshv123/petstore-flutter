import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:petstore_with_api/features/auth/widgets/HeaderWidget.dart';

import '../widgets/widgets.dart';

@RoutePage()
class AuthWidgetScreen extends StatefulWidget {
  const AuthWidgetScreen({super.key});

  @override
  State<AuthWidgetScreen> createState() => _AuthWidgetScreenState();
}

class _AuthWidgetScreenState extends State<AuthWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    final txtStlOnYlwback = const TextStyle(
        fontWeight: FontWeight.w800, color: Color.fromRGBO(62, 62, 62, 1));

    return Container(
      child: ListView(
        children: [Headerwidget(),FormWidget(), FooterWidgetSocial(), FooterAboutWidget()],
      ),
    );
  }
}

