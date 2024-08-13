import 'package:attendance/screens/splash_screen/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/resources/theme_app.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: const FirebaseOptions(
          apiKey: "AIzaSyAYqa9KlZqHc1C4BqnYAIOOx56dQ7EHcB4"   ,
          appId:  "1:319868585793:android:01fdf906db23f5fd9f43c0" ,
          messagingSenderId:   "319868585793" ,
          projectId:"smart-board-9c23c",
          storageBucket: "smart-board-9c23c.appspot.com" ,
        ),
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      theme: lightTheme(),
      home:const  SplashScreen(),
    );
  }
}
