import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});
  static String routeName = 'Pembayaran';

  @override
  // ignore: library_private_types_in_public_api
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  String selectedPaymentMethod = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                    SizedBox(height: 3.h),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.w),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kelas 3A',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'Semester 2',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                            height: 20,
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              Text(
                                'Rp. 350.000,00',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey, // Adjust color as needed
                            thickness: 1, // Adjust thickness as needed
                            height: 20,
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Pembayaran',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          // Payment method selection (replace with actual options)
                          Wrap(
                            spacing: 5.w,
                            children: [
                              ChoiceChip(
                                label: const Text('Shopeepay'),
                                selected: selectedPaymentMethod == 'Shopeepay',
                                onSelected: (value) => setState(
                                    () => selectedPaymentMethod = 'Shopeepay'),
                              ),
                              ChoiceChip(
                                label: const Text('BRI'),
                                selected: selectedPaymentMethod == 'BRI',
                                onSelected: (value) => setState(
                                    () => selectedPaymentMethod = 'BRI'),
                              ),
                              ChoiceChip(
                                label: const Text('Ovo'),
                                selected: selectedPaymentMethod == 'Ovo',
                                onSelected: (value) => setState(
                                    () => selectedPaymentMethod = 'Ovo'),
                              ),
                              ChoiceChip(
                                label: const Text('BNI'),
                                selected: selectedPaymentMethod == 'BNI',
                                onSelected: (value) => setState(
                                    () => selectedPaymentMethod = 'BNI'),
                              ),
                              ChoiceChip(
                                label: const Text('BCA'),
                                selected: selectedPaymentMethod == 'BCA',
                                onSelected: (value) => setState(
                                    () => selectedPaymentMethod = 'BCA'),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          ElevatedButton(
                            onPressed: () {
                              if (selectedPaymentMethod.isEmpty) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Metode Pembayaran'),
                                      content: const Text(
                                          'Silahkan pilih metode pembayaran terlebih dahulu.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Oke'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Pembayaran berhasil')),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(76, 66, 83, 1),
                              foregroundColor: Colors.white,
                              elevation: 5.0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 82.0,
                                vertical: 20.0,
                              ),
                            ),
                            child: const Text('Bayar Sekarang'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
