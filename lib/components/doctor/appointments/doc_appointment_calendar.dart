import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DocAppointmentCalendar extends StatefulWidget {
  const DocAppointmentCalendar({Key? key}) : super(key: key);

  @override
  State<DocAppointmentCalendar> createState() => _DocCalendarState();
}

class _DocCalendarState extends State<DocAppointmentCalendar> with TickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _animation;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  List<dynamic> _selectedEvents = [];
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDate = DateTime.now();

// Logic to move to the next month
  void _nextMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month + 1, 1);
    });
  }

// Logic to move to the previous month
  void _previousMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month - 1, 1);
    });
  }
  void _onPageChanged(DateTime focusedDay) {
    setState(() {
      _selectedDate = focusedDay;
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: TableCalendar(
          // Configure the calendar
          calendarFormat: _calendarFormat,

          formatAnimationCurve: Curves.easeOutQuad,
          formatAnimationDuration: const Duration(milliseconds: 300),
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            leftChevronVisible: false,
            rightChevronVisible: false,
          ),

          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.inactiveColor, fontSize: 14.sp),
            weekendStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.maybeCyanColor, fontSize: 14.sp),
          ),
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          availableGestures: AvailableGestures.horizontalSwipe,
          startingDayOfWeek: StartingDayOfWeek.monday,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: _onDaySelected,
          onPageChanged: _onPageChanged,
          calendarBuilders: CalendarBuilders(
            headerTitleBuilder: (BuildContext context, DateTime time){
              // String currentMonth = DateFormat.yMMMM().format(time);
              String currentMonth = DateFormat('MMMM yyyy',).format(_selectedDate);

              return Column(mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed:_previousMonth,
                          icon: Icon(Icons.arrow_back_ios, size: 20.sp,color: MyStyles.maybeCyanColor,)),
                      Text(currentMonth.toUpperCase(),style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyStyles.maybeCyanColor, fontSize: 20.sp),),
                      IconButton(
                          onPressed: _nextMonth,
                          icon: Icon(Icons.arrow_forward_ios, size: 20.sp, color: MyStyles.maybeCyanColor)),

                    ],
                  ),
                ],
              );
            },

            selectedBuilder: (context, date, events) {
              bool isSelected = isSameDay(date, _selectedDay);
              if (isSelected) {
                _animationController.forward(from: 0.0);
              } else {
                _animationController.reset();
              }

              return AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return CircleAvatar(
                    radius: 22.sp,
                    backgroundColor: MyStyles.maybeCyanColor,
                    child: Text(
                        '${date.day}',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: MyStyles.whiteColor, fontSize: 22.sp)
                    ),
                  );
                },
              );
            },
            todayBuilder: (context, date, events) {
              return Center(
                child: CircleAvatar(
                  radius: 18.sp,
                  backgroundColor: MyStyles.maybeCyanColor,
                  child: Text(
                      '${date.day}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.whiteColor)
                  ),
                ),
              );
            },
            defaultBuilder: (BuildContext context, DateTime inactiveDate, DateTime activeDate){
              return Text("${inactiveDate.day}", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: MyStyles.maybeCyanColor, fontSize: 22.sp),);
            },
            rangeStartBuilder: (BuildContext context, DateTime inactiveDate, DateTime activeDate){
              return Text("${inactiveDate.day}", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: MyStyles.maybeCyanColor, fontSize: 22.sp),);
            },
            outsideBuilder: (BuildContext context, DateTime inactiveDate, DateTime activeDate){
              return Text("${inactiveDate.day}", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.cyanColor, fontSize: 16.sp),);
            },


            dowBuilder: (BuildContext context, DateTime date) {
              // Mapping weekdays to short format
              const days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
              String dayText = days[date.weekday % 7]; // Using modulo to align Sunday as 0

              return Center(
                child: Text(
                  dayText,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: MyStyles.maybeCyanColor,
                    fontSize: 16.sp,
                  ),
                ),
              );
            },


          ),
          focusedDay: _selectedDate,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
        ),
      ),

    );

  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _focusedDay = focusedDay;
        _selectedDay = selectedDay;
        _selectedEvents = _getEventsForDay(selectedDay);
      });
    }
  }

  List<dynamic> _getEventsForDay(DateTime day) {
    return [
      {'title': 'Event 1', 'description': 'Description of Event 1'},
      {'title': 'Event 2', 'description': 'Description of Event 2'},
    ];
  }
}
