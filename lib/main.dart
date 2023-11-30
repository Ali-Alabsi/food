import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:image_picker/image_picker.dart';
import 'contraller/Get/GetContraller.dart';
import 'contraller/midleware/auth/AuthMidleware.dart';
import 'core/shared/color.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/home/home.dart';
import 'view/screen/home/layoutHome.dart';

SharedPreferences? sharedPreferences ;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences =  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetControl>(
      init: GetControl(),
      builder: (value)=>
       GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: createMaterialColor(mainColor ),
          secondaryHeaderColor: Colors.white,
          canvasColor: Colors.black,
          fontFamily: 'nir',

        ),
        darkTheme: ThemeData(
          primarySwatch: createMaterialColor(mainColor ),
          secondaryHeaderColor: Colors.black,
          canvasColor: Colors.white,
          fontFamily: 'nir',
        ),
        themeMode:value.darkThemes ? ThemeMode.dark :ThemeMode.light,
        // theme: Themes.lightThemes,
        title: 'Food',
        // home: Login(),
        initialRoute:'/login',
        getPages: [
          GetPage(name: '/login', page:()=> Login() , middlewares: [AuthMidleware()] ),
          GetPage(name: '/home', page:()=> Home() ),
          GetPage(name: '/LayoutHome', page:()=> LayoutHome() ),
        ],
      ),
    );
  }
}

// class Themes{
//   static ThemeData dartThemes = ThemeData.light().copyWith(
//     primarySwatch: createMaterialColor(mainColor ),
//     secondaryHeaderColor: Colors.black,
//     canvasColor: Colors.white,
//     fontFamily: 'nir',
//   );
//   static ThemeData lightThemes = ThemeData.dark().copyWith(
//     primarySwatch: createMaterialColor(mainColor ),
//     secondaryHeaderColor: Colors.white,
//     canvasColor: Colors.black,
//     fontFamily: 'nir',
//   );
// }

