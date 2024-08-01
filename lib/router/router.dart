import 'package:auto_route/auto_route.dart';

import 'package:petstore_with_api/features/catalog/catalog.dart';
import 'package:petstore_with_api/features/auth/auth.dart';

import '../features/cart/view/cart_screen.dart';
import '../features/home/view/view.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: CatalogRouteWidget.page, path: 'catalog'),
          AutoRoute(page: CartRoute.page, path: 'cart'),
          AutoRoute(page: AuthWidgetRoute.page, path: 'auth'),
        ])
      ];
}
