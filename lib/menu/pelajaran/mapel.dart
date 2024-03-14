import 'package:flutter/material.dart';
import 'package:my_app/menu/pelajaran/senin.dart';
import 'package:my_app/menu/pelajaran/selasa.dart';
import 'package:my_app/menu/pelajaran/rabu.dart';
import 'package:my_app/menu/pelajaran/kamis.dart';
import 'package:my_app/menu/pelajaran/jumat.dart';
import 'package:sizer/sizer.dart';

class Mapel extends StatefulWidget {
  const Mapel({super.key});
  static const String routeName = 'Mapel';

  @override
  // ignore: library_private_types_in_public_api
  _MapelState createState() => _MapelState();
}

class _MapelState extends State<Mapel> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
      appBar: AppBar(
        title: const Text(
          'Jadwal',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: const Color.fromRGBO(186, 252, 182, 1),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 170,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(186, 252, 182, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/kalender.png',
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 7),
                      const Text(
                        'Jadwal Mata Pelajaran',
                        style: TextStyle(
                          color: Color.fromRGBO(75, 63, 99, 1),
                          fontSize: 16.0,
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'di-update tiap semester',
                        style: TextStyle(
                          color: Color.fromRGBO(75, 63, 99, 1),
                          fontSize: 12.0,
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 0
                                ? Colors.white
                                : const Color.fromRGBO(0, 0, 0, 0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Center(
                              child: Text(
                                "Senin",
                                style: TextStyle(
                                  color: const Color.fromRGBO(75, 63, 99, 1),
                                  fontSize: 15.0,
                                  fontFamily: 'WorkSans',
                                  fontWeight: _selectedIndex == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 1
                                ? Colors.white
                                : const Color.fromRGBO(0, 0, 0, 0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 1;
                              });
                            },
                            child: Center(
                              child: Text(
                                "Selasa",
                                style: TextStyle(
                                  color: const Color.fromRGBO(75, 63, 99, 1),
                                  fontSize: 15.0,
                                  fontFamily: 'WorkSans',
                                  fontWeight: _selectedIndex == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 2
                                ? Colors.white
                                : const Color.fromRGBO(0, 0, 0, 0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 2;
                              });
                            },
                            child: Center(
                              heightFactor: 1,
                              widthFactor: 0.1,
                              child: Text(
                                "Rabu",
                                style: TextStyle(
                                  color: const Color.fromRGBO(75, 63, 99, 1),
                                  fontSize: 15.0,
                                  fontFamily: 'WorkSans',
                                  fontWeight: _selectedIndex == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 3
                                ? Colors.white
                                : const Color.fromRGBO(0, 0, 0, 0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 3;
                              });
                            },
                            child: Center(
                              heightFactor: 1,
                              widthFactor: 0.1,
                              child: Text(
                                "Kamis",
                                style: TextStyle(
                                  color: const Color.fromRGBO(75, 63, 99, 1),
                                  fontSize: 15.0,
                                  fontFamily: 'WorkSans',
                                  fontWeight: _selectedIndex == 3
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 4
                                ? Colors.white
                                : const Color.fromRGBO(0, 0, 0, 0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 4;
                              });
                            },
                            child: Center(
                              heightFactor: 1,
                              widthFactor: 0.1,
                              child: Text(
                                "Jumat",
                                style: TextStyle(
                                  color: const Color.fromRGBO(75, 63, 99, 1),
                                  fontSize: 15.0,
                                  fontFamily: 'WorkSans',
                                  fontWeight: _selectedIndex == 4
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    height: 70.h,
                    child: _selectedIndex == 0
                        ? const Senin()
                        : _selectedIndex == 1
                            ? const Selasa()
                            : _selectedIndex == 2
                                ? const Rabu()
                                : _selectedIndex == 3
                                    ? const Kamis()
                                    : const Jumat()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
