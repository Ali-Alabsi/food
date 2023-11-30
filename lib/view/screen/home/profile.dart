
import 'package:flutter/material.dart';
import 'package:food/main.dart';
import 'package:get/get.dart';

import '../../../contraller/Get/GetContraller.dart';
import '../../../core/shared/color.dart';
import '../../../core/shared/radius.dart';

class Profile extends StatelessWidget {
  GetControl contextGetX = Get.put(GetControl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Theme.of(context).secondaryHeaderColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                alignment: AlignmentDirectional.center,
                margin: EdgeInsetsDirectional.all(20),
                child: GetBuilder<GetControl>(
                  init: GetControl(),
                  builder: (context)=>
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: mainColor.withOpacity(0.3),
                                  offset: Offset.zero,
                                  blurRadius: 2,
                                  spreadRadius: 2
                              )
                            ]
                        ),
                        child:context.file==null ?  Image.asset(
                          'assets/image/login.jpg',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ) : Image.file(context.file!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(40, 40),
                      maximumSize: Size(40, 40),
                      backgroundColor: mainColor,
                      padding: EdgeInsets.symmetric(
                        // horizontal: 10
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed: (){
                    // contextGetX.getImageGallery();
                    Get.bottomSheet( Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color:   Theme.of(context).secondaryHeaderColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset.zero,

                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: (){
                              contextGetX.getImageCamera();
                              Get.back();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset.zero),
                                ],
                              ),
                              margin: EdgeInsetsDirectional.symmetric(
                                  vertical: 28
                              ),
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 8
                              ),
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_alt,
                                    color:   Theme.of(context).secondaryHeaderColor,
                                    size: 110,
                                  ),
                                  Text('Camera', style: TextStyle(
                                      color:   Theme.of(context).secondaryHeaderColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              contextGetX.getImageGallery();
                              Get.back();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset.zero),
                                ],
                              ),
                              margin: EdgeInsetsDirectional.symmetric(
                                vertical: 28,

                              ),
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 8
                              ),
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.image,
                                    color:   Theme.of(context).secondaryHeaderColor,
                                    size: 110,
                                  ),
                                  Text('gallery', style: TextStyle(
                                      color:   Theme.of(context).secondaryHeaderColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ) );
                  },
                  child: Icon(Icons.edit,color:   Theme.of(context).secondaryHeaderColor,size: 25,),
                ),
              ),
            ],
          ),
          Text("${sharedPreferences!.getString("name")}", style: TextStyle(fontSize: 22 , color: mainColor, fontWeight: FontWeight.w900),),
         SizedBox(
           height: 20,
         ),
          Expanded(
            child: Container(
              padding: EdgeInsetsDirectional.all(30),
              decoration: BoxDecoration(
                  color:   Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset.zero,
                        blurRadius: 3,
                        spreadRadius:2
                    )
                  ]
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_box , color: mainColor, size: 50,),
                          SizedBox(width: 15,),
                          Text("Edit Profile", style: TextStyle(fontSize: 22 , color: mainColor.withOpacity(0.8), fontWeight: FontWeight.w900),),
                        ],
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.rtl,
                        color: mainColor,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.symmetric(
                      vertical: 10
                    ),
                    color: Colors.grey.withOpacity(0.3),
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.settings , color: mainColor, size: 50,),
                          SizedBox(width: 15,),
                          Text("Settings", style: TextStyle(fontSize: 22 , color: mainColor.withOpacity(0.8), fontWeight: FontWeight.w900),),
                        ],
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.rtl,
                        color: mainColor,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.symmetric(
                        vertical: 10
                    ),
                    color: Colors.grey.withOpacity(0.3),
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help , color: mainColor, size: 50,),
                          SizedBox(width: 15,),
                          Text("Help", style: TextStyle(fontSize: 22 , color: mainColor.withOpacity(0.8), fontWeight: FontWeight.w900),),
                        ],
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.rtl,
                        color: mainColor,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.symmetric(
                        vertical: 10
                    ),
                    color: Colors.grey.withOpacity(0.3),
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.exit_to_app_rounded , color: mainColor, size: 50,),
                          SizedBox(width: 15,),
                          Text("Login Out", style: TextStyle(fontSize: 22 , color: mainColor.withOpacity(0.8), fontWeight: FontWeight.w900),),
                        ],
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        textDirection: TextDirection.rtl,
                        color: mainColor,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.symmetric(
                        vertical: 10
                    ),
                    color: Colors.grey.withOpacity(0.3),
                    height: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
