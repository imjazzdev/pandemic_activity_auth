import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandemic_activity/main.dart';

class ActivityComponen extends StatelessWidget {
  const ActivityComponen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ActivityModel('Sehat yuk  ', 'Sport', 'assets/img/sport.jpg', '/sport'),
        ActivityModel('Tingkatkan ibadahmu  ', 'Pray', 'assets/img/pray.jpg', '/pray'),
        ActivityModel('Manfaatkan waktu  ', 'Learn', 'assets/img/learn.jpg', '/learn'),
      ]),
    );
  }
}

class ActivityModel extends StatelessWidget {
  String title;
  String caption;
  String img;
  String route;

  ActivityModel(this.caption, this.title, this.img, this.route);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(route);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        height: 100,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: Border.all(color: Colors.purple, width: 1.5),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(1, 1),
                  spreadRadius: 2,
                  blurRadius: 3)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(0, 1),
                            spreadRadius: 2,
                            blurRadius: 1)
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(img, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(caption,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.green.shade900))
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
      ),
    );
  }
}
