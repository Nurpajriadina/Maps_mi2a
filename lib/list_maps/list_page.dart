import 'package:flutter/material.dart';
import 'maps_screen.dart';

class LocationItem {
  final String name;
  final String gambarAsset;
  final double latitude;
  final double longitude;
  final double rating;
  final String descripsi;

  LocationItem({
    required this.name,
    required this.gambarAsset,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.descripsi,
  });
}

class ListPage extends StatelessWidget {
  final List<LocationItem> locations = [
    LocationItem(
      name: 'Semen Padang Hospital (SPH)',
      gambarAsset: 'assets/images/SemenPadangHospital.jpg',
      latitude: -0.9388490431080254,
      longitude: 100.39972455954289,
      rating: 3.9,
      descripsi:
          "Perjalanan Semen Padang Hospital (SPH) sudah mulai sejak tahun 1970 . Semen Padang Hospital berawal dari sebuah klinik yang dibentuk pada tahun 1970. Klinik tersebut adalah Klinik kesehatan PT Semen Padang dan kemudian berubah menjadi Unit Biro Kesehatan.",
    ),
    LocationItem(
      name: 'Rumah Sakit Hermina Padang',
      gambarAsset: 'assets/images/RS2.jpg',
      latitude: -0.9145837033075319,
      longitude: 100.36189913512412,
      rating: 4.5,
      descripsi:
          "Rumah Sakit Hermina Padang merupakan salah satu rumah sakit di Kota Padang. Rumah sakit ini melayani pasien baik dari Kota Padang maupun dari luar daerah. Hermina Hospital Padang memiliki tenaga dokter ahli dan perawat berkualitas.",
    ),
    LocationItem(
      name: 'Rumah Sakit Bhayangkara Padang',
      gambarAsset: 'assets/images/RS3.JPG',
      latitude: -0.9327710791376541,
      longitude: 100.36604984403304,
      rating: 4.6,
      descripsi:
          "Rumah Sakit Bhayangkara Padang merupakan rumah sakit milik Kepolisian Negara Republik Indonesia (Polri) yang terbuka untuk umum. Selain melayani anggota Polri dan keluarganya, rumah sakit ini juga melayani masyarakat dengan fasilitas medis yang memadai dan pelayanan yang cepat dan sigap, terutama untuk penanganan kasus trauma dan kedaruratan.",
    ),
    LocationItem(
      name: 'RSUP Dr. M. Djamil Padang',
      gambarAsset: 'assets/images/RS4.jpg',
      latitude: -0.9419547356011129,
      longitude: 100.36690190085918,
      rating: 4.4,
      descripsi:
          "Rumah Sakit Umum Pusat (RSUP) Dr. M. Djamil Padang pertama kali bernama “RSU Megawati” yang menempati 2 (dua) komplek, sebagian di Jl. Belakang Gereja dan sebagian lagi di Jl. Jati Lama, Padang dengan berkapasitas 100 tempat tidur.",
    ),
    LocationItem(
      name: 'Rumah Sakit YosoDarsso',
      gambarAsset: 'assets/images/RS5.jpeg',
      latitude: -0.9359832413607168,
      longitude: 100.3627510518321,
      rating: 4.8,
      descripsi:
          "RS Yos Sudarso adalah rumah sakit swasta yang telah berdiri sejak lama di Kota Padang. Rumah sakit ini menyediakan berbagai layanan spesialis, termasuk bedah, penyakit dalam, dan layanan radiologi, dengan komitmen tinggi terhadap keselamatan dan kenyamanan pasien.",
    ),
    LocationItem(
      name: 'Rumah Sakit Umum Aisiyah',
      gambarAsset: 'assets/images/RS6.jpg',
      latitude: -0.9457666213429142,
      longitude: 100.36358790593988,
      rating: 4.2,
      descripsi:
          "RSUD Dr. Rasidin merupakan rumah sakit milik pemerintah kota Padang. Rumah sakit ini menjadi rujukan untuk pelayanan kesehatan dasar hingga lanjutan dengan berbagai layanan spesialis dan fasilitas penunjang yang terus berkembang.",
    ),
    LocationItem(
      name: 'RS NAILI DBS',
      gambarAsset: 'assets/images/RS7.jpg',
      latitude: -0.945042880511112,
      longitude: 100.35929873556594,
      rating: 4.7,
      descripsi:
          "Rumah Sakit Naili DBS merupakan sebuah rumah sakit swasta di bawah naungan PT. Ananda Naili Prima, dengan layanan kesehatan umum yang diperuntukkan bagi warga Padang dan sekitarnya.",
    ),
    LocationItem(
      name: 'Rumah Sakit Umum Daerah dr. Rasidin',
      gambarAsset: 'assets/images/RS8.jpg',
      latitude: -0.8781841499965528,
      longitude: 100.39533327571941,
      rating: 4.3,
      descripsi:
          "Rumah Sakit Umum Daerah dr. Rasidin Padang (disingkat RSUD Rasidin Padang) adalah sebuah rumah sakit pemerintah yang terletak di kota Padang, provinsi Sumatera Barat, Indonesia. Nama rumah sakit ini diambil dari nama Dr. Rasidin, salah seorang wali kota Padang periode 1949—1956.",
    ),
    LocationItem(
      name: 'Rumah Sakit Tentara dr. Reksodiwiryo Padang',
      gambarAsset: 'assets/images/RS9.jpg',
      latitude: -0.9495674790139361,
      longitude: 100.37254008365733,
      rating: 4.4,
      descripsi:
          "Rumah Sakit Tentara (RST) Dr. Reksodiwiryo adalah rumah sakit milik TNI AD yang melayani prajurit TNI, keluarga, serta masyarakat umum. Rumah sakit ini memiliki layanan kesehatan yang lengkap dan menjadi salah satu pusat rujukan di wilayah militer.",
    ),
    LocationItem(
      name: 'RSKM Padang Eye Center',
      gambarAsset: 'assets/images/RS10.jpg',
      latitude: -0.9446902180001163,
      longitude: 100.35432132189052,
      rating: 4.1,
      descripsi:
          "Padang Eye Center memiliki tim dokter subspesialis mata yang terdiri dari 20 ahli. Dari penanganan katarak hingga glaukoma, setiap dokter di tim kami memiliki keahlian khusus dalam bidangnya. Kami bertekad memberikan perawatan mata terbaik untuk menjaga kesehatan dan kejernihan visi Anda.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Rumah Sakit di Padang')),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final loc = locations[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  loc.gambarAsset,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(loc.name),
              subtitle: Row(
                children: [
                  ...List.generate(5, (i) {
                    return Icon(
                      i < loc.rating.floor() ? Icons.star : Icons.star_border,
                      color: Colors.orange,
                      size: 16,
                    );
                  }),
                  SizedBox(width: 6),
                  Text(loc.rating.toString(), style: TextStyle(fontSize: 12)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MapScreen(location: loc)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
