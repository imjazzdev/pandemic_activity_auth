import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green,
            child: Image.asset('assets/img/learn.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 40,),
          Text('Your body needs recovery', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
          Text('Sistem pembelajaran jarak jauh (PJJ) ini menjadi solusi agar kegiatan belajar mengajar tetap dapat dilaksanakan meskipun di tengah pandemi COVID-19. Dalam sistem pembelajaran jarak jauh ini, sistem pembelajaran yang dilakukan secara online atau daring (dalam jaringan) dari rumah, cenderung menggunakan teknologi sebagai sarana pembelajaran. Tujuan dari pembelajaran secara daring ini ialah untuk memberikan layanan pembelajaran bermutu dalam jaringan yang bersifat masif dan terbuka untuk menjangkau peminat ruang belajar agar lebih banyak dan lebih luas. Kegiatan pembelajaran yang dilakukan dapat berupa penyampaian materi secara daring atau juga dapat berupa pemberian tugas untuk dikerjakan di rumah.', 
           style: TextStyle(fontSize: 17, color: Colors.grey.shade700),textAlign: TextAlign.justify),

          //Sistem pembelajaran jarak jauh (PJJ) ini menjadi solusi agar kegiatan belajar mengajar tetap dapat dilaksanakan meskipun di tengah pandemi COVID-19. Dalam sistem pembelajaran jarak jauh ini, sistem pembelajaran yang dilakukan secara online atau daring (dalam jaringan) dari rumah, cenderung menggunakan teknologi sebagai sarana pembelajaran. Tujuan dari pembelajaran secara daring ini ialah untuk memberikan layanan pembelajaran bermutu dalam jaringan yang bersifat masif dan terbuka untuk menjangkau peminat ruang belajar agar lebih banyak dan lebih luas. Kegiatan pembelajaran yang dilakukan dapat berupa penyampaian materi secara daring atau juga dapat berupa pemberian tugas untuk dikerjakan di rumah.
        ],
      ),
    );
  }
}