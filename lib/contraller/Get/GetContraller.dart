
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/shared/color.dart';

  class GetControl extends GetxController{
  bool loginScreen = true;
  File?  file;
  getImageGallery() async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? imageGallery = await imagePicker.pickImage(
        source: ImageSource.gallery);
    file = File(imageGallery!.path);
    update();
    // print("--------------------------------------------"+file+"--------------------------------------------------");
  }
  getImageCamera() async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? imageGallery = await imagePicker.pickImage(
        source: ImageSource.camera);
    file = File(imageGallery!.path);
    update();
    // print("--------------------------------------------"+file+"--------------------------------------------------");
  }
    void changeToLoginScreen(){
    loginScreen =true;
    update();
  }
  void changeToSingUpScreen(){
    loginScreen =false;
    update();
  }

  bool loadingSignUp = false;
  void changeToloadingSignUp(){
    loadingSignUp =true;
    update();
  }

  void changeToStoploadingSignUp(){
    loadingSignUp =false;
    update();
  }

  int indexSelectCatgrety = 0;

  void changeindexSelectCatgrety(index){
    indexSelectCatgrety = index;
    update();
  }


  int selectIndexNavBar = 0;

  void changeSelectIndexNavBar(index){
    selectIndexNavBar = index;
    update();
  }

  List<bool> favorite =[
    false,
    false,
    false,
    false,
    false,
    false,


  ] ;
  void changeFavorite(index){
    if(favorite[index] ==true){
      favorite[index] = false;
    }else{
      favorite[index] = true;
    }

    update();
  }
  Color  whiteColor = Colors.black;
  Color  blackColor = Colors.white;
  changeWhiteColor(){
    if(whiteColor ==Colors.black){
      whiteColor = Colors.white;
    }else{
      whiteColor = Colors.black;
    }
    if(blackColor ==Colors.black){
      blackColor = Colors.white;
    }else{
      blackColor = Colors.black;
    }
    update();
  }
  bool darkThemes = false;
  void changedarkThemes(){
    if(darkThemes==false){
    darkThemes =true;
    }else{
      darkThemes =false;
    }
    update();
  }
}