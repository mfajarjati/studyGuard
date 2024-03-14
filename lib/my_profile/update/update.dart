import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Update extends StatefulWidget {
  const Update({super.key});
  static String routeName = 'Update';

  @override
  // ignore: library_private_types_in_public_api
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _namaController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      appBar: AppBar(
        title: const Text(
          'Update',
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context)
              .unfocus(); // Menutup keyboard saat area luar form disentuh
        },
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(186, 252, 182, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/update.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Silahkan klik kolom yang ingin di-update',
                    style: TextStyle(
                      color: Color.fromRGBO(75, 63, 99, 1),
                      fontSize: 14.0,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: const Text(
                          'Data Orang Tua',
                          style: TextStyle(
                            color: Color.fromRGBO(75, 63, 99, 1),
                            fontSize: 15.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      TextField(
                        controller: _namaController,
                        decoration: const InputDecoration(
                          labelText: 'Nama',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(79, 69, 87, 50),
                            fontSize: 13.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(79, 69, 87, 50),
                            fontSize: 13.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(79, 69, 87, 50),
                            fontSize: 13.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 8),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Data Anak',
                          style: TextStyle(
                            color: Color.fromRGBO(75, 63, 99, 1),
                            fontSize: 15.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Nama',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(79, 69, 87, 50),
                            fontSize: 13.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(79, 69, 87, 50),
                            fontSize: 13.0,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      ElevatedButton(
                        onPressed: () {
                          // Menampilkan snackbar jika ada input kosong
                          if (_namaController.text.isEmpty ||
                              _usernameController.text.isEmpty ||
                              _passwordController.text.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text('Konfirmasi'),
                                      content: const Text(
                                          'Mohon lengkapi semua kolom'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: const Text('Oke'),
                                        ),
                                      ],
                                    ));
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text('Konfirmasi'),
                                      content:
                                          const Text('Silahkan Tunggu Admin'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Oke'),
                                        ),
                                      ],
                                    ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color.fromRGBO(76, 66, 83, 1),
                          foregroundColor: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 82.0,
                            vertical: 20.0,
                          ),
                        ),
                        child: const Text('Simpan Sekarang'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _namaController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
