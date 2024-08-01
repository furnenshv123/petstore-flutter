import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';


@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        CatalogRouteWidget(),
        CartRoute(),
        AuthWidgetRoute()
      ],
      builder: (context, child){
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(

          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: 'Каталог'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Корзина'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль')
            ],
          ),
        );
      },
    );
  }
  void _openPage (int index, TabsRouter tabsRouter){

    tabsRouter.setActiveIndex(index);
  }
}
