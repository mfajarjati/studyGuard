import 'package:flutter/material.dart';
import 'package:my_app/my_profile/about/about.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/my_profile/pengaturan/setting.dart';
import 'package:my_app/my_profile/pembayaran/tabb.dart';
import 'package:my_app/my_profile/update/update.dart';
//import 'package:my_app/started.dart';

class ProfileDetail extends StatefulWidget {
  static String routeName = 'ProfileDetail';

  const ProfileDetail({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(186, 252, 182, 100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 7),
                const Text(
                  'Clara García',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 63, 99, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'WorkSans',
                  ),
                ),
                const Text(
                  '@claragarcia',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 63, 99, 1),
                    fontSize: 16.0,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              padding: EdgeInsets.only(left: 6.w, right: 7.w, top: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      SizerUtil.deviceType == DeviceType.tablet ? 60 : 40),
                  topRight: Radius.circular(
                      SizerUtil.deviceType == DeviceType.tablet ? 60 : 40),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    leading: const Icon(Icons.settings),
                    title: const Text('Pengaturan'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, Pengaturan.routeName);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    leading: const Icon(Icons.payment),
                    title: const Text('Pembayaran'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, Tabb.routeName);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    selectedTileColor: Colors.grey,
                    leading: const Icon(Icons.edit),
                    title: const Text('Update Data Diri'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, Update.routeName);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    leading: const Icon(Icons.info),
                    title: const Text('Tentang'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.pushNamed(context, About.routeName);
                    },
                  ),
                  ListTile(
                    selectedTileColor: Colors.grey,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('Log Out'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Konfirmasi'),
                          content:
                              const Text('Apakah Anda yakin ingin keluar?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Batal'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                                Navigator.pop(context);

                                //Navigator.pushNamed(context, StaredPage.routeName);
                              },
                              child: const Text('Keluar'),
                            ),
                          ],
                        ),
                      );
                    },
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
