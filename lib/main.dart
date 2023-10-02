import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm/res/getx_localization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: languages(),
      locale: Locale('ur','PK'),
      fallbackLocale: Locale('en_US'),
      color: Colors.blue,
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
      debugShowCheckedModeBanner: false,

    );
  }
}
