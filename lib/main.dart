import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandemic_activity/ui/homepage.dart';
import 'package:pandemic_activity/ui/learnpage.dart';
import 'package:pandemic_activity/ui/praypage.dart';
import 'package:pandemic_activity/ui/signin_page.dart';
import 'package:pandemic_activity/ui/sportpage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: SigninPage(),
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> SigninPage()),
        GetPage(name: '/home', page: ()=> HomePage()),
        GetPage(name: '/learn', page: ()=> LearnPage()),
        GetPage(name: '/pray', page: ()=> PrayPage()),
        GetPage(name: '/sport', page: ()=> SportPage()),
      ],
    );
  }
}