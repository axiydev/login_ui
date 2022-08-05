/*
Created by Axmadjon Isaqov on 14:40:09 01.08.2022
© 2022 @axi_dev 
*/
/*
Mavzu:::Login UI
*/
import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';
import 'package:login_ui/pages/data_page/data_page.dart';
import 'package:login_ui/pages/fecebook/facebook_page.dart';
import 'package:login_ui/pages/lesson/amazon_home_page.dart';
import 'package:login_ui/pages/login/login_page.dart';
import 'package:login_ui/pages/sliver_page/custom_sliver_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: const IconThemeData(color: UtilColors.amazonPrimaryColor)),
      routes: {
        '/login': (context) => const LoginPage(),
        '/data': (context) => const DataPage(),
        CustomSliverPage.route: (context) => const CustomSliverPage(),
        AmazonHomePage.route: (context) => const AmazonHomePage(),
        FacebookPage.route: (context) => const FacebookPage()
      },
      initialRoute: FacebookPage.route,
    );
  }
}
