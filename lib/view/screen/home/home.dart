import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food/core/shared/color.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../contraller/Get/GetContraller.dart';
import '../../../core/shared/TFTcontroller.dart';
import '../../../core/shared/widget.dart';
import '../../widget/home/home.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Theme.of(context).secondaryHeaderColor,
      body: Container(
        padding: EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  TFFSeaechHome(),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonSearchHome(context)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40 ,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index)=>ButtonselectCategraty(index  ,context),
                  separatorBuilder: (context , index )=> SizedBox(width: 25,),
                  itemCount: nameCategroty.length),
            ),
            SizedBox(height: 20,),
            GridItemHome()
          ],
        ),
      ),
    );
  }




}
