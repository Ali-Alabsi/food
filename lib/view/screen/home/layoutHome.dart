
import 'package:flutter/material.dart';
import 'package:food/view/screen/auth/login.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../contraller/Get/GetContraller.dart';
import '../../../core/shared/color.dart';
import '../../widget/home/layoutHomeWidget.dart';
import 'cart.dart';
import 'favorite.dart';
import 'home.dart';
import 'profile.dart';

class LayoutHome extends StatelessWidget {
  GetControl obGetControl = Get.put(GetControl());
  List<Widget> Screen=[
    Home(),
    Favorite(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(context),
      floatingActionButton: FloatingActionButtonHome(context),
      bottomNavigationBar: GetBuilder<GetControl>(
        init: GetControl(),
        builder: (value)=>
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  color:   Theme.of(context).secondaryHeaderColor,
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(30),
                  //   topRight: Radius.circular(30),
                  // ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset.zero),
                  ]
              ),
              child: SalomonBottomBar(
                currentIndex: value.selectIndexNavBar,
                onTap: (i){
                  value.changeSelectIndexNavBar(i);
                },
                items: [
                  SalomonBottomBarItem(
                    icon: Icon(Icons.home),
                    title: Text("Home"),
                    selectedColor: mainColor,
                    unselectedColor:   Theme.of(context).canvasColor

                  ),

                  SalomonBottomBarItem(
                    icon: Icon(Icons.favorite),
                    title: Text("Favorite"),
                    selectedColor: mainColor,
                      unselectedColor:   Theme.of(context).canvasColor
                  ),

                  SalomonBottomBarItem(
                    icon: Icon(Icons.shopping_cart),
                    title: Text("Cart"),
                    unselectedColor:   Theme.of(context).canvasColor,
                    selectedColor: mainColor,
                  ),

                  SalomonBottomBarItem(
                    icon: Icon(Icons.person),
                      unselectedColor:   Theme.of(context).canvasColor,
                    title: Text("Profile"),
                    selectedColor: mainColor,
                  ),
                ],
              ),
            ),
      ),
      body:  GetBuilder<GetControl>(
        init: GetControl(),
          builder: (value)=>
           Screen[value.selectIndexNavBar]),
    );

  }
}
