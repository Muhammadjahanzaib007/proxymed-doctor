import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Custom Widget/custom_text.dart';
import '../../CustomContainer/CustomContainer.dart';
import '../MessageModelClass/MessageModelClass.dart';

class MessageChat extends StatelessWidget {
  const MessageChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFFFF)),
                child: const Center(
                    child: Icon(Icons.arrow_back_ios_new,
                        size: 18, color: Color(0xff677294))),
              ),
            ),
          ),
          title: CustomText(
            text: "Messages",
            fontColor: Color(0xff333333),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ListView.builder(
                      itemCount: ChatModel.dummyData.length,
                      itemBuilder: (context, index) {
                        return ChatModel.dummyData[index].user == true
                            ? Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundImage: NetworkImage(
                                              ChatModel
                                                  .dummyData[index].avatarUrl),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          width: 199.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              color: const Color(0xffFFFFFF),
                                              border: Border.all(
                                                color: const Color(0xff96CCD5),
                                              )),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w,
                                                vertical: 14.h),
                                            child: CustomText(
                                              text: ChatModel
                                                  .dummyData[index].message,
                                              fontColor: Color(0xff8C8FA5),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    )
                                  ],
                                ))
                            : Align(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 199.w,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color: Color(0xffE76880),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w, vertical: 14.h),
                                        child: CustomText(
                                          text: ChatModel
                                              .dummyData[index].message,
                                          fontColor: Color(0xffFFFFFF),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.2,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    )
                                  ],
                                ),
                              );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffE76880),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 11,
                          left: 21,
                          child: GestureDetector(
                              onTap: () {
                                print("");
                              },
                              child: Image.asset(
                                  "assets/images/messagelink.png"))),
                      Positioned(
                        top: 3,
                        left: 50,
                        right: 3,
                        child: SizedBox(
                          height: 44.h,
                          child: TextField(
                            cursorColor: const Color(0xffE76880),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  bottom: 4, top: 4, left: 10),
                              filled: true,
                              fillColor: const Color(0xffFFFFFF),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffFFFFFF)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffFFFFFF)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xffFFFFFF)),
                              ),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    print("");
                                  },
                                  child: const Icon(
                                    Icons.send,
                                    color: Color(0xffE76880),
                                  )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
