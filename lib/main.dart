import 'package:flutter/material.dart';
import 'package:my_app/my_profile/pembayaran/lunas.dart';
import 'package:my_app/my_profile/pembayaran/tabb.dart';
import 'package:sizer/sizer.dart';
import 'my_profile/profile.dart';
import 'my_profile/about/about.dart';
import 'my_profile/pengaturan/setting.dart';
import 'my_profile/pembayaran/payment.dart';
import 'my_profile/update/update.dart';
import 'package:my_app/home.dart';
import 'package:my_app/login.dart';
import 'package:my_app/started.dart';
import 'package:my_app/menu/gizi.dart';
import 'package:my_app/menu/pesan.dart';
import 'package:my_app/menu/absensi.dart';
import 'package:my_app/menu/pelajaran/mapel.dart';
import 'package:my_app/menu/pelajaran/senin.dart';
import 'package:my_app/menu/pelajaran/selasa.dart';
import 'package:my_app/menu/pelajaran/rabu.dart';
import 'package:my_app/menu/pelajaran/kamis.dart';
import 'package:my_app/menu/pelajaran/jumat.dart';
import 'package:my_app/menu/penilaian/penilaian.dart';
import 'package:my_app/menu/penilaian/semesterone.dart';
import 'package:my_app/menu/penilaian/semestertwo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          StaredPage.routeName: (context) => const StaredPage(),
          LoginPage.routeName: (context) => const LoginPage(),
          Home.routeName: (context) => const Home(),
          Gizi.routeName: (context) => const Gizi(),
          Pesan.routeName: (context) => const Pesan(),
          Absensi.routeName: (context) => const Absensi(),
          Mapel.routeName: (context) => const Mapel(),
          Senin.routeName: (context) => const Senin(),
          Selasa.routeName: (context) => const Selasa(),
          Rabu.routeName: (context) => const Rabu(),
          Kamis.routeName: (context) => const Kamis(),
          Jumat.routeName: (context) => const Jumat(),
          Penilaian.routeName: (context) => const Penilaian(),
          SemesterOne.routeName: (context) => const SemesterOne(),
          SemesterTwo.routeName: (context) => const SemesterTwo(),
          ProfileDetail.routeName: (context) => const ProfileDetail(),
          About.routeName: (context) => const About(),
          Pengaturan.routeName: (context) => const Pengaturan(),
          Update.routeName: (context) => const Update(),
          Pembayaran.routeName: (context) => const Pembayaran(),
          Tabb.routeName: (context) => const Tabb(),
          Lunas.routeName: (context) => const Lunas()
        },
        initialRoute: StaredPage.routeName,
      );
    });
  }
}
