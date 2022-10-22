import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pandemic_activity/ui/componen/activity_componen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0,
            title: Text(
              'Home',
              style: TextStyle(color: Colors.purple),
            ),
            centerTitle: true,
            actions: [
              Icon(Icons.exit_to_app_rounded),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Text('Sign Out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      )),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Get.back();
                  },
                ),
              )
            ]),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.7,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/img/banner.jpg', fit: BoxFit.cover,)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Activity',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
            ),
            ActivityComponen(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.purple,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(7),
          child: GNav(
            backgroundColor: Colors.purple,
            tabs: [
            GButton(icon: Icons.home, text: 'Home', ),
            GButton(icon: Icons.search, text: 'Search', ),
            GButton(icon: Icons.person, text: 'Me', ),
          ]),
        ),
      );
  }
}
