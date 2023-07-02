import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'layout/responsive_layout.dart';
import 'screens/mobile/auth/screens/login_screen.dart';
import 'screens/mobile/home_screen.dart';
import 'screens/web/home_screen.dart';
import 'common/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCmBoOaEk3tgVK8oHDo83nHmSh2Ej-naXU",
        projectId: "instagram-clone-25a20",
        storageBucket: "instagram-clone-25a20.appspot.com",
        messagingSenderId: "860467959845",
        appId: "1:860467959845:web:832eb80e6672ef712307cc",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const ResponsiveLayout(
        mobileLayout: LoginScreen(),
        webLayout: WebHomeScreen(),
      ),
    );
  }
}
