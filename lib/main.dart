import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social/responsive/mobile_layout.dart';
import 'package:flutter_social/responsive/responsive_layout_screen.dart';
import 'package:flutter_social/responsive/web_layout.dart';
import 'package:flutter_social/utils/colors.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: ResponsiveLayout(mobileLayout: MobileLayout(), webLayout: WebLayout()),
    );
  }
}