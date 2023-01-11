import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Appointments Screen/Appointments.dart';
import '../Find Doctor Screen/find_doctor_screen.dart';
import '../Home Screen/home.dart';
import '../Medical Record/Medical Record.dart';
import '../Message/Message.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int _selectedIndex = 0;
  final screen = [
    Home(),
    FindDoctorScreen(),
    Message(),
    Appointments(),
    MedicalRecord(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screen.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0.sp),
          topRight: Radius.circular(20.0.sp),
        ),
        child: SizedBox(
          height: 50.h,
          child: BottomNavigationBar(
            unselectedItemColor: Color(0xff8C8FA5),
            backgroundColor: Color(0xffFFFFFF),
            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w100, fontSize: 1.sp),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 24,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.stethoscope,
                  size: 22,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.commentDots,
                  size: 22,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                    size: 22,
                    AssetImage(
                      "assets/images/Appointment.png",
                    )),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  size: 22,
                  AssetImage(
                    "assets/images/medical_record_icon.png",
                  ),
                ),
                label: "",
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xffEC2547),
            iconSize: 24,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
