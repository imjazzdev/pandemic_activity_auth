import 'package:flutter/material.dart';

class PrayPage extends StatelessWidget {
  const PrayPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green,
            child: Image.asset('assets/img/pray.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 40,),
          Text('Your body needs recovery', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
          Text("Bagi masyarakat Indonesia, agama adalah rumah besar yang kokoh. Di sana merak tinggal sejak lahir, tumbuh berkembang dari masa kanak-kanak, remaja, dewasa, tua hingga meninggal dunia. Semua aktivitas dan tahapan kehidupan tidak pernah lepas dari kesadaran beragama. Terlebih bagi seorang muslim, dalam melakukan aktivitas apa pun selalu diperintahkan untuk berdoa, memohon perlindungan bimbingan dari Tuhan. \n Agama selalu mengajarkan agar kita bersabar ketika berada dalam suasana susah, lalu bersyukur sewaktu kesuksesan dan keberhasilan datang. Secara eksplisit, agama juga menganjurkan agar kita berlomba-lomba dalam berbuat kebaikan.",
          style: TextStyle(fontSize: 17, color: Colors.grey.shade700), textAlign: TextAlign.justify),
          //Bagi masyarakat Indonesia, agama adalah rumah besar yang kokoh. Di sana merak tinggal sejak lahir, tumbuh berkembang dari masa kanak-kanak, remaja, dewasa, tua hingga meninggal dunia. Semua aktivitas dan tahapan kehidupan tidak pernah lepas dari kesadaran beragama. Terlebih bagi seorang muslim, dalam melakukan aktivitas apa pun selalu diperintahkan untuk berdo’a, memohon perlindungan bimbingan dari Tuhan.
//Agama selalu mengajarkan agar kita bersabar ketika berada dalam suasana susah, lalu bersyukur sewaktu kesuksesan dan keberhasilan datang. Secara eksplisit, agama juga menganjurkan agar kita berlomba-lomba dalam berbuat kebaikan.
        ],
      ),
    );
  }
}