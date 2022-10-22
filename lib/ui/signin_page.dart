import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandemic_activity/ui/homepage.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextField(
                controller: emailController,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Email'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: TextField(
                controller: passwordController,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Password (minimal 6 character)'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      if (FirebaseAuth.instance.currentUser == null) {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        Get.off(HomePage());
                      } else {
                        await FirebaseAuth.instance.signOut();
                      }
                    },
                    child: StreamBuilder<User?>(
                        stream: FirebaseAuth.instance.userChanges(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text('Sign Out');
                          } else {
                            return Text(
                              'Register',
                            );
                          }
                        })),
                ElevatedButton(
                    onPressed: () async {
                      
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                        Get.off(HomePage());
                     
                    },
                    child: StreamBuilder<User?>(
                        stream: FirebaseAuth.instance.userChanges(),
                        builder: (context, snapshot) {
                          return Text('Login');
                        }))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
