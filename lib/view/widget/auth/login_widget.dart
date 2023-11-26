
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../contraller/Get/GetContraller.dart';
import '../../../core/function/image_picker.dart';
import '../../../core/function/valid.dart';
import '../../../core/shared/TFTcontroller.dart';
import '../../../core/shared/color.dart';
import '../../../core/shared/message.dart';
import '../../../core/shared/radius.dart';
import '../../../core/shared/widget.dart';
GetControl contextGetX = Get.put(GetControl());

Widget SingUpScreen({
  required BuildContext context,
  required var formKey
}) {
  return Expanded(
    child: ListView(
      // shrinkWrap: true,
      children: [
        Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameTFF('Name'),
                  TFF(
                      name: 'Enter Your Name',
                      keyboardType:TextInputType.name,
                      priIcon: Icons.account_circle ,
                      controller: nameControllerSingUP,
                      validator: (val){
                        if (val == "") {
                          return "Please Agien Enter THe Name";
                        }
                      }
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NameTFF('Email'),
                  TFF(
                      name: 'Enter Your Email',
                      onChanged:  (value) {
                        emailControllerLogin.text = value!;
                      },
                      keyboardType:TextInputType.emailAddress,
                      priIcon: Icons.email ,
                      controller:  emailControllerSingUP,
                      validator: (val){
                        if (isEmail(val!) == false) {
                          return navEmail;
                        }
                      }
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NameTFF('Password'),
                  TFF(
                      name: 'Enter Your Password',
                      keyboardType:TextInputType.visiblePassword,
                      controller: passwordControllerSingUP,
                      validator: (val){
                        if (isPassword(val!) == false) {
                          return navPassword;
                        }
                      },
                      priIcon: Icons.lock_open),
                  SizedBox(
                    height: 30,
                  ),
                  ButtomLogin(
                      onPressed: () async {
                        if(formKey.currentState!.validate()){
                          contextGetX.changeToloadingSignUp();
                        }
                        }
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}



Widget LoginScreen({
  required BuildContext context,
  required var formKey
}) {
  return Expanded(
    child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // await signInWithGoogle();

                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(70, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                child: Icon(
                  Icons.email,
                  color: mainColor,
                  size: 40,
                )
            ),
            ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(70, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                child: Icon(
                  Icons.facebook_rounded,
                  color: mainColor,
                  size: 40,
                )
            ),
            ElevatedButton(
                onPressed: (){
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(70, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                child: Icon(
                  Icons.apple,
                  color: mainColor,
                  size: 40,
                )
            ),
          ],
        ),
        Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NameTFF('Email'),
                  TFF(
                    name: 'Enter Your Email',
                    priIcon: Icons.email,
                    keyboardType:TextInputType.emailAddress,
                    controller: emailControllerLogin ,
                    validator:(val){
                      if (isEmail(val!) == false) {
                        return navEmail;
                      }
                    },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NameTFF('Password'),
                  TFF(
                      name: 'Enter Your Password',
                      priIcon: Icons.lock_open ,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordControllerLogin,
                      validator: (val){
                        if (isPassword(val!) == false) {
                          return navPassword;
                        }
                      }
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtomLogin(
                      onPressed: () async {
                        if(formKey.currentState!.validate()){
                          contextGetX.changeToloadingSignUp();
                          // loginInFireBase(context);
                        }
                      }
                  ),
                  forgetPassword()
                ],
              ),
            )),
      ],
    ),
  );
}

Widget forgetPassword() {
  return Container(
      width: double.infinity,
      child: TextButton(
          onPressed: () {},
          child: Text(
            'forget Password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          )));
}

Widget ButtomLogin({required void Function()? onPressed}) {
  return GetBuilder<GetControl>(
    init: GetControl(),
    builder: (getContext)=>
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: mainColor,
                minimumSize: Size(double.infinity, 50),
                maximumSize: Size(double.infinity, 50),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
            onPressed: onPressed,
            child:getContext.loadingSignUp ? CircularProgressIndicator(color: Colors.white,): Text('Login'),
          ),
        ),
  );
}





Widget ImageTopInLoginScreen() {
  return Stack(
    children: [
      Container(
        height: 300,
        margin: EdgeInsetsDirectional.only(
            bottom: 20
        ),
        padding: EdgeInsetsDirectional.symmetric(
            horizontal: 90,
            vertical: 40
        ),
        decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(loginRadius),
              bottomRight: Radius.circular(loginRadius),
            )),
        width: double.infinity,
        child: GetBuilder<GetControl>(
          init: GetControl(),
          builder: (context)=>
           Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
            ),
            child:context.file==null ?  Image.asset(
              'assets/image/login.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ) : Image.file(context.file!,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 55,
        right: 80,
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
                color: Colors.white,
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
                            color: Colors.white,
                            size: 110,
                          ),
                          Text('Camera', style: TextStyle(
                              color: Colors.white,
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
                            color: Colors.white,
                            size: 110,
                          ),
                          Text('gallery', style: TextStyle(
                              color: Colors.white,
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
          child: Icon(Icons.add,color: Colors.white,size: 25,),
        ),
      ),
    ],
  );
}

Positioned ButtomSelectLogin() {
  return Positioned(
    bottom: 0,
    left: 60 ,
    child: GetBuilder<GetControl>(
      init: GetControl(),
      builder: (getContext) =>
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: getContext.loginScreen ? mainColor : subColor,
                  minimumSize: Size(140, 50),
                  maximumSize: Size(140, 50),
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
              onPressed: () {
                getContext.changeToLoginScreen();
              },
              child: Text('Login'),
            ),
          ),
    ),
  );
}
Positioned ButtomSelectSignUp() {
  return Positioned(
    bottom: 0,
    right: 60 ,
    child: GetBuilder<GetControl>(
      init: GetControl(),
      builder: (getContext)=>
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:getContext.loginScreen? subColor:mainColor ,
                  minimumSize: Size(140, 50),
                  maximumSize: Size(140, 50),
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
              onPressed: () {
                getContext.changeToSingUpScreen();
              },
              child: Text('Sing Up'),
            ),
          ),
    ),
  );
}