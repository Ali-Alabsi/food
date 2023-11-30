
import 'package:flutter/material.dart';

import '../../../core/class/item_card.dart';
import '../../../core/shared/color.dart';
import '../../widget/home/home.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Theme.of(context).secondaryHeaderColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          // height: 200,
          child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                childAspectRatio: .55,
                mainAxisSpacing: 20,

              ),
              itemCount: listItemCart.length,
              itemBuilder: (context , index)=>
                  CardItemFav(index , context)),
        ),
      ),
    );
  }
}
