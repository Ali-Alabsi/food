

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../contraller/Get/GetContraller.dart';
import '../../../core/class/item_card.dart';
import '../../../core/shared/TFTcontroller.dart';
import '../../../core/shared/color.dart';
import '../../../core/shared/widget.dart';
GetControl ob = Get.put(GetControl());
Widget GridItemHome() {

  return Expanded(
    child: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: .55,
          mainAxisSpacing: 20,

        ),
        itemCount: listItemCart.length,
        itemBuilder: (context , index)=>
            CardItemHome(index,context)),
  );
}

Widget CardItemHome(index ,context) {
  return InkWell(
    onTap: (){
      if(  listItemCart[index].t ==true){
        listItemCart[index].t =false;
      }else{
        listItemCart[index].t =true;
      }

      ob.changeFavorite(index);
    },
    child: Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: mainColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Container( alignment: AlignmentDirectional.topEnd, child:
          GetBuilder<GetControl>(
              init: GetControl(),
              builder: (value)=>
                  Icon(value.favorite[index]==true ? Icons.favorite :  Icons.favorite_border_outlined , color: Colors.red,  ))),
          SizedBox(height: 4,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                      color: mainColor.withOpacity(0.3),
                      offset: Offset.zero,
                      blurRadius: 3,
                      spreadRadius: 3
                  )
                ]
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('${listItemCart[index].image}' , fit: BoxFit.cover, width: 150, height: 150, ),
          ),
          SizedBox(height: 20,),
          Text("${listItemCart[index].name}", style: TextStyle(fontSize: 22 , color: mainColor, fontWeight: FontWeight.w900),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${listItemCart[index].time} min', style: TextStyle(color: Colors.grey),),
              Row(
                children: [
                  Icon(Icons.star , color: Colors.amber, ),
                  Text('${listItemCart[index].start}' , style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${listItemCart[index].price}\$' , style: TextStyle(color: mainColor , fontSize: 22 ),),
              Container(
                height: 30,
                width: 30,
                child: Icon(Icons.add , color:   Theme.of(context).secondaryHeaderColor,),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          offset: Offset.zero,
                          spreadRadius: 2,
                          blurRadius: 3
                      )
                    ]
                ),
              )

            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    ),
  );
}
Widget CardItemFav(index ,context) {
  return InkWell(
    onTap: (){
      listItemCart[index].t =true;
      ob.changeFavorite(index);
    },
    child: listItemCart[index].t ==true? Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: mainColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              alignment: AlignmentDirectional.topEnd, child:
          GetBuilder<GetControl>(
            init: GetControl(),
              builder: (value)=>
               Icon(value.favorite[index]==true ? Icons.favorite :  Icons.favorite_border_outlined , color: Colors.red,  ))),
          SizedBox(height: 4,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                      color: mainColor.withOpacity(0.3),
                      offset: Offset.zero,
                      blurRadius: 3,
                      spreadRadius: 3
                  )
                ]
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('${listItemCart[index].image}' , fit: BoxFit.cover, width: 150, height: 150, ),
          ),
          SizedBox(height: 20,),
          Text("${listItemCart[index].name}", style: TextStyle(fontSize: 22 , color: mainColor, fontWeight: FontWeight.w900),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${listItemCart[index].time} min', style: TextStyle(color: Colors.grey),),
              Row(
                children: [
                  Icon(Icons.star , color: Colors.amber, ),
                  Text('${listItemCart[index].start}' , style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${listItemCart[index].price}\$' , style: TextStyle(color: mainColor , fontSize: 22 ),),
              Container(
                height: 30,
                width: 30,
                child: Icon(Icons.add , color:   Theme.of(context).secondaryHeaderColor,),
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          offset: Offset.zero,
                          spreadRadius: 2,
                          blurRadius: 3
                      )
                    ]
                ),
              )

            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    ) :SizedBox()
  );
}
Widget ButtonselectCategraty(index ,context ) {
  return GetBuilder <GetControl>(
    init: GetControl(),
    builder: (value)=> ElevatedButton(
        child: Text(
          '${nameCategroty[index]}',
          style: TextStyle(color: value.indexSelectCatgrety==index ?    Theme.of(context).secondaryHeaderColor :mainColor, fontSize: 22),
        ),
        onPressed: (){
          value.changeindexSelectCatgrety(index);
        },
        style:ElevatedButton.styleFrom(
            backgroundColor:  value.indexSelectCatgrety==index ?  mainColor :  Theme.of(context).secondaryHeaderColor
        )
    ),
  );
}

Expanded TFFSeaechHome() {
  return Expanded(
    child: Container(
      width: double.infinity,
      child: TextFormField(
        controller: searchControllerHome,
        // validator: (value) {
        //   return null ;
        // },
        onChanged: (value) {
          print(value);
        },
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: mainColor,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 3,
                  color: mainColor,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 2, color: mainColor)),
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
      ),
    ),
  );
}

InkWell ButtonSearchHome(context) {
  return InkWell(
    child: Container(
      margin: EdgeInsetsDirectional.symmetric(
        // vertical: 4
      ),
      height: double.infinity,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: mainColor,
      ),
      child: Icon(
        Icons.search,
        size: 35,
        color:   Theme.of(context).secondaryHeaderColor,
      ),
    ),
  );
}