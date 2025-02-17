import 'dart:io';

import 'package:food/contraller/Get/GetContraller.dart';


import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widget/auth/login_widget.dart';


class Login extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GetControl contextGetX = Get.put(GetControl());

  int w = 100;
  String? n ;
  // XFile? mediaFileList;

  @override
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<GetControl>(
        init: GetControl(),
        builder: (getContext)=>
         Container(
          child: Column(
            children: [
              Container(
                height: 350,
                alignment: AlignmentDirectional.topStart,
                // color: Colors.red,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ImageTopInLoginScreen(),
                    ButtomSelectLogin(),
                    ButtomSelectSignUp(),
                  ],
                ),
              ),
              getContext.loginScreen ? LoginScreen(context: context , formKey: formKey) : SingUpScreen( context: context , formKey: formKey),
              // MaterialButton(onPressed: (){
              //   errorDialog2(context:  context).show();
              // },
              // child: Icon(Icons.add),)
            ],
          ),
        ),
      ),
    );
  }


}

