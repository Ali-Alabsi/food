
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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

}