import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../contraller/Get/GetContraller.dart';
import '../../../core/shared/color.dart';
import '../../../main.dart';

GetControl obGet = Get.put(GetControl());

AppBar AppBarHome(context) {
  return AppBar(
    backgroundColor:  Theme.of(context).secondaryHeaderColor,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: mainColor,
        ),
        child: Icon(Icons.menu_rounded ,
          // color:   Theme.of(context).secondaryHeaderColor,
        ),
      ),
    ),
    title: Text(
      '${sharedPreferences?.getString('name')}',
      style: TextStyle(color: mainColor),
    ),
    actions: [
      InkWell(
        onTap: () {
          print("ali");
        },
        child: GetBuilder<GetControl>(
          init: GetControl(),
          builder: (value)=>
           InkWell(
            onTap: (){
              value.changeSelectIndexNavBar(3);
            },
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: mainColor,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 15,
      )
    ],
  );
}


FabCircularMenuPlus FloatingActionButtonHome(context) {
  return FabCircularMenuPlus(
      ringDiameter: 450.0,
      ringColor: mainColor.withOpacity(0.8),
      fabCloseIcon: Icon(Icons.close, color:   Theme.of(context).secondaryHeaderColor),
      fabOpenIcon: Icon(
        Icons.settings,
        color:   Theme.of(context).secondaryHeaderColor,
      ),
      children: [
        IconButton(
            icon: Icon(
              Icons.exit_to_app_rounded,
              color:   Theme.of(context).secondaryHeaderColor,
            ),
            onPressed: () {
              sharedPreferences?.clear();
              Get.offNamed('/login');
            }),
        GetBuilder<GetControl>(
          init: GetControl(),
          builder: (value)=>
           IconButton(
              icon: Icon(
                value.darkThemes ?  Icons.light_mode_outlined:Icons.dark_mode_outlined,
                color:   Theme.of(context).secondaryHeaderColor,
              ),
              onPressed: () {
                value.changedarkThemes();
              }),
        ),
        IconButton(
            icon: Icon(
              Icons.refresh,
              color:   Theme.of(context).secondaryHeaderColor,
            ),
            onPressed: () {
              // v.updateGetData();
              print('Update');
            }),
        IconButton(
            icon: Icon(
              Icons.language,
              color:   Theme.of(context).secondaryHeaderColor,
            ),
            onPressed: () {
              print('language');
            }),
        IconButton(
            icon: Icon(
              Icons.info,
              color:   Theme.of(context).secondaryHeaderColor,
            ),
            onPressed: () {
              print('Information');
            }),

      ]);
}