import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'layout/responsive_layout.dart';
import 'screens/mobile/home_screen.dart';
import 'screens/web/home_screen.dart';
import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileLayout: HomeScreen(),
        webLayout: WebHomeScreen(),
      ),
    );
  }
}
