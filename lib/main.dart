import 'package:flutter/material.dart';
import 'package:skate_guide_cali_mk6/pages/choose_region.dart';
import 'package:skate_guide_cali_mk6/pages/home.dart';
import 'package:skate_guide_cali_mk6/pages/loading.dart';
import 'package:skate_guide_cali_mk6/pages/choose_skatepark.dart';
import 'package:skate_guide_cali_mk6/pages/main_page.dart';

void  main() => runApp(MaterialApp(
  initialRoute: '/mainpage',
  routes: {
    '/mainpage':(context) => MainPage(),
    '/':(context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/region': (context) => ChooseRegion(),
  },
));