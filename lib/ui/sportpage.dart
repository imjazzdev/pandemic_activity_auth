import 'package:flutter/material.dart';

class SportPage extends StatelessWidget {
  const SportPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green,
            child: Image.asset('assets/img/sport.jpg', fit: BoxFit.cover,),
          ),
          SizedBox(height: 40,),
          Text('Your body needs recovery', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
          
          Text('Beberapa hasil penelitian juga menunjukkan bahwa olahraga atau aktivitas fisik dapat mencegah terjadinya gangguan mental yang dialami oleh sebagian orang karena adanya penerapan karantina dan isolasi, maupun jaga jarak (physical dystancing) akibat pandemik Covid-19. Gangguan mental tersebut misalnya depresi, kecemasan, sindrom kelelahan dan stress. \n Berolahraga atau melakukan aktivitas fisik juga dapat menghindarkan seseorang dari penyakit jantung, diabetes, dan tekanan darah tinggi, penyakit yang kemungkinan besar dapat terjadi pada masa pandemik Covid-29 karena kurangnya aktivitas fisik masyarakat yang cenderung menghabiskan waktu di rumah dengan menonton televisi, menggunakan handphone, dan bermain game, sehingga berisiko mengalami penyakit jantung, diabetes, dan tekanan darah tinggi.',
          style: TextStyle(fontSize: 17, color: Colors.grey .shade700), textAlign: TextAlign.justify)
        ],
      ),
    );
  }
}