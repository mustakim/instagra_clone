import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/screens/signup_screen.dart';
import 'package:instagram_flutter/utils/color.dart';

const apiKey = 'AIzaSyB8vw32H-IHCSOnEjUdUDIaHNkYaijrrnY';
const appId = '1:542198169751:web:ef69ad23e89bb4e39469d2';
const authDomain = "instagram-clone-84c88.firebaseapp.com";
const projectId = "instagram-clone-84c88";
const storageBucket = "instagram-clone-84c88.appspot.com";
const messagingSenderId = "542198169751";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  kIsWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: apiKey,
              appId: appId,
              messagingSenderId: messagingSenderId,
              projectId: projectId,
              storageBucket: storageBucket
          ))
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()),
      home: SignupScreen(),
    );
  }
}
