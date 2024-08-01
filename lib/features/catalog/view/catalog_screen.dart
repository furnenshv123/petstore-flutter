import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petstore_with_api/Theme/app_btn_style.dart';
import 'package:petstore_with_api/router/router.dart';


@RoutePage()
class CatalogScreenWidget extends StatefulWidget {
  const CatalogScreenWidget({super.key});

  @override
  State<CatalogScreenWidget> createState() => _CatalogScreenWidgetState();
}

class _CatalogScreenWidgetState extends State<CatalogScreenWidget> {
  final _paddingsForBtn = EdgeInsets.all(15);
  final _bordersForBtn = BoxDecoration(
      border: Border.symmetric(horizontal: BorderSide(width: 3, color: Colors.grey), vertical: BorderSide.none)
  );
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          floating: true,
          snap: true,

          title: Container(
            child: Row(
              children: [
                Text('Акции', style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppBtnStyle.mainColorApplication,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text('515', style: TextStyle(
                      fontSize: 10
                  ),),
                )
              ],
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size(double.infinity, 150), child: Container(
            child: Column(
              children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: TxtWidgColors.SearchBackgroundColor
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text('Поиск...')
                  ],
                ),
              ),
              Container(
                decoration: _bordersForBtn,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: _paddingsForBtn,
                      child: Row(
                        children: [
                          Icon(Icons.tune),
                          Text('Фильтры')
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(width: 3, color: Colors.grey))
                      ),
                      padding: _paddingsForBtn,
                      child: Row(
                        children: [
                          Icon(Icons.sort),
                          Text('Сортировка')
                        ],
                      ),
                    )
                  ],
                ),
              )
              ],
            ),
          )),
        ),
        SliverList.builder(itemBuilder: (context, index) => Container(
          width: double.infinity,
          height: 5,
        ))
      ],
    );
  }


}
