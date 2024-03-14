import 'package:flutter/material.dart';
import 'package:my_app/menu/absensi.dart';
import 'package:my_app/my_profile/profile.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/menu/gizi.dart';
import 'package:my_app/menu/pesan.dart';
import 'package:my_app/menu/pelajaran/mapel.dart';
import 'package:my_app/menu/penilaian/penilaian.dart';
//import 'package:my_app/started.dart';

class Home extends StatefulWidget {
  static String routeName = 'Home';

  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
          child: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Konfirmasi'),
                  content: const Text('Apakah Anda yakin ingin keluar?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);

                        //pushNamed(context, StaredPage.routeName);
                      },
                      child: const Text('Keluar'),
                    ),
                  ],
                ),
              );
            },
            iconSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                Navigator.pushNamed(context, ProfileDetail.routeName);
              },
              iconSize: 30,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome\nParent's",
                  style: TextStyle(
                    height: 0.9,
                    color: Color.fromRGBO(75, 63, 99, 1),
                    fontSize: 52.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Aisha Zahra',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    SizerUtil.deviceType == DeviceType.tablet ? 60 : 40,
                  ),
                  topRight: Radius.circular(
                    SizerUtil.deviceType == DeviceType.tablet ? 60 : 40,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: GridView.count(
                padding: const EdgeInsets.only(left: 2, top: 20),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 7,
                mainAxisSpacing: 2,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Mapel.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromARGB(156, 142, 213, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Jadwal',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Mata\nPelajaran',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 29,
                          right: 10,
                          child: Transform.rotate(
                            angle: 0.3,
                            child: Container(
                              width: 20.w,
                              height: 10.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/jadwal.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Absensi.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromRGBO(206, 184, 255, 100),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Absensi',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Kehadiran\nAnak',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          right: 7,
                          child: Transform.rotate(
                            angle: 0.3,
                            child: Container(
                              width: 20.w,
                              height: 10.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/absensi.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Penilaian.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromRGBO(255, 213, 159, 100),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Penilaian',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Terampil\nAnak',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          right: 7,
                          child: Transform.rotate(
                            angle: 0.3,
                            child: Container(
                              width: 21.w,
                              height: 11.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/penilaian.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Pesan.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromRGBO(255, 159, 159, 100),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Pesan',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Terhadap\nGuru',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          right: 7,
                          child: Transform.rotate(
                            angle: 0.3,
                            child: Container(
                              width: 22.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/pesan.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromRGBO(232, 255, 159, 100),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Rute',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Perjalanan\nAnak',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          right: 7,
                          child: Transform.rotate(
                            angle: -0.3,
                            child: Container(
                              width: 22.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rute.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Gizi.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 140,
                          height: 120,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            color: const Color.fromRGBO(184, 255, 186, 90),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Gizi',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Makanan\nHarian',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 27,
                          right: 7,
                          child: Transform.rotate(
                            angle: 0.3,
                            child: Container(
                              width: 22.w,
                              height: 12.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/gizi.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
