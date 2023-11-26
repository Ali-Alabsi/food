
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';


class AuthMidleware extends GetMiddleware{
  @override
  redirect  (String? route){
    if(sharedPreferences!.getString("login") != null) return RouteSettings(name: '/home');
  }
}
