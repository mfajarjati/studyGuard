import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Absensi extends StatefulWidget {
  const Absensi({super.key});

  static String routeName = 'Absensi';

  @override
  // ignore: library_private_types_in_public_api
  _AbsensiState createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      appBar: AppBar(
        title: const Text('Absensi',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.normal,
            )),
        backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 145,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(186, 252, 182, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/anak.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 7),
                const Text(
                  'Aisha zahra',
                  style: TextStyle(
                    height: 0.8,
                    color: Color.fromRGBO(75, 63, 99, 1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'WorkSans',
                  ),
                ),
                const Text(
                  '@aishazah',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 63, 99, 1),
                    fontSize: 14.0,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
            width: 90.w,
            child: _buildChart(),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 6.w, right: 9.w, top: 5.w),
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
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1.h),
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hadir',
                                style: TextStyle(
                                  height: 1.0,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                              height: 1.1,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(height: 2.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sakit',
                                style: TextStyle(
                                  height: 1.0,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              height: 1.1,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(height: 2.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Izin',
                                style: TextStyle(
                                  height: 1.0,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                              height: 1.1,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(height: 2.h),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tanpa Keterangan',
                                style: TextStyle(
                                  height: 1.0,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              height: 1.1,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(height: 3.h),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Rincian telah diunduh'),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: const Color.fromRGBO(76, 66, 83, 1),
                          foregroundColor: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 95.0,
                            vertical: 15.0,
                          ),
                        ),
                        child: const Text('Unduh Rincian'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChart() {
    final data = [
      Kehadiran("    ", 50, Colors.blue),
      Kehadiran("   ", 5, Colors.yellow),
      Kehadiran("  ", 2, Colors.green),
      Kehadiran(" ", 1, Colors.red),
    ];

    final data1 = [
      Kehadiran("Hadir", 30, Colors.blue),
      Kehadiran("Sakit", 2, Colors.yellow),
      Kehadiran("Izin", 1, Colors.green),
      Kehadiran("Tanpa\nKeterangan", 0, Colors.red),
    ];

    final seriesList = [
      charts.Series<Kehadiran, String>(
        id: 'total',
        domainFn: (Kehadiran total, _) => total.status,
        measureFn: (Kehadiran total, _) => total.hasil,
        colorFn: (Kehadiran total, _) =>
            charts.ColorUtil.fromDartColor(total.color),
        data: data,
      ),
    ];

    return Column(
      children: [
        Expanded(
          child: charts.BarChart(
            seriesList,
            animate: true,
            vertical: false,
            domainAxis: const charts.OrdinalAxisSpec(
              showAxisLine: false, // Menghilangkan garis sumbu x
              renderSpec: charts.NoneRenderSpec(), // Menghapus label sumbu x
            ),
            primaryMeasureAxis: const charts.NumericAxisSpec(
              viewport: charts.NumericExtents(
                  0, 80), // Sesuaikan dengan rentang data Anda
              tickProviderSpec: charts.StaticNumericTickProviderSpec(
                <charts.TickSpec<num>>[
                  charts.TickSpec<num>(0),
                  charts.TickSpec<num>(20),
                  charts.TickSpec<num>(40),
                  charts.TickSpec<num>(60),
                  charts.TickSpec<num>(80),
                ],
              ),
              renderSpec: charts.GridlineRendererSpec(
                labelOffsetFromAxisPx: 2,
                tickLengthPx: 5,
                lineStyle:
                    charts.LineStyleSpec(color: charts.Color.transparent),
                labelStyle: charts.TextStyleSpec(
                    fontSize: 0, color: charts.Color.transparent),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildLegend(data1),
      ],
    );
  }

  Widget _buildLegend(List<Kehadiran> data) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      children: data.map((kehadiran) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              color: kehadiran.color,
            ),
            const SizedBox(width: 5),
            Text(
              kehadiran.status,
              style: TextStyle(
                height: 1.1,
                fontSize: 8.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class Kehadiran {
  final String status;
  final int hasil;
  final Color color;

  Kehadiran(this.status, this.hasil, this.color);
}
