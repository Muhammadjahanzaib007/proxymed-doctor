import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../Home Screen/list/speciality_list.dart';

class Speciality extends StatefulWidget {
  const Speciality({Key? key}) : super(key: key);

  @override
  State<Speciality> createState() => _SpecialityState();
}

class _SpecialityState extends State<Speciality> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      //Get.off();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff677294),
                      size: 13,
                    ),
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomText(
                  text: "Speciality",
                  textAlign: TextAlign.left,
                  fontColor: Color(0xff333333),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 40.h),
                height: 300.h,
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  // controller: ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  itemCount: specialityListModel.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Column(children: [
                        Container(
                          height: 76.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                            border:
                                Border.all(width: 1, color: Color(0xffFFFFFF)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4.0,
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            specialityListModel[index].imageName,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomText(
                          text: specialityListModel[index].text,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          fontColor: Color(0xff000000),
                        ),
                      ]),
                      onTap: () {
                        setState(
                          () {},
                        );
                      },
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
