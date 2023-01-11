import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../Custom Widget/custom_text.dart';

class CalendarDate extends StatefulWidget {
  const CalendarDate({Key? key}) : super(key: key);

  @override
  State<CalendarDate> createState() => _CalendarDateState();
}

class _CalendarDateState extends State<CalendarDate> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2019, 2, 25),
        new Event(
          date: new DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2019, 2, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Color(0xffE76880),
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: true,

      selectedDayBorderColor: Color(0xffE76880),
      selectedDayButtonColor: Color(0xffE76880),
      weekendTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      // thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      firstDayOfWeek: 4,
      // markedDatesMap: _markedDateMap,
      height: 238.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          const CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),

      todayButtonColor: Colors.transparent,
      selectedDayTextStyle: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      weekdayTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      inactiveDaysTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      daysTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      nextDaysTextStyle: TextStyle(
          color: Color(0xff000000),
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.sp),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 4.w),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //custom icon

                Container(
                  padding: EdgeInsets.only(
                      left: 12.w, right: 12.w, top: 16.h, bottom: 16.h),
                  height: 52.h,
                  decoration: BoxDecoration(
                      color: Color(0xff96CCD5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomText(
                        text: _currentMonth,
                        textAlign: TextAlign.left,
                        fontColor: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.3,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Color(0xffFFFFFF),
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                _targetDateTime = DateTime(_targetDateTime.year,
                                    _targetDateTime.month - 1);
                                _currentMonth =
                                    DateFormat.yMMM().format(_targetDateTime);
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.h,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xffFFFFFF),
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                _targetDateTime = DateTime(_targetDateTime.year,
                                    _targetDateTime.month + 1);
                                _currentMonth =
                                    DateFormat.yMMM().format(_targetDateTime);
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 05.0),
                  child: Column(
                    children: [
                      Container(child: _calendarCarouselNoHeader),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
