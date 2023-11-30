
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';


class AuthMidleware extends GetMiddleware{
  @override
  redirect  (String? route){
    if(sharedPreferences!.getString("name") != null) return RouteSettings(name: '/LayoutHome');
  }
}
