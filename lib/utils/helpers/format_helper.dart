import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormatHelper{


  /// Returns a format of ['Monday, 31 November']
  static String formatAppointmentDate(String DateTimeString) {
    DateTime date = DateTime.parse(DateTimeString);
    final DateFormat formatter = DateFormat('EEEE, d MMMM');
    return formatter.format(date);
  }


  /// Returns a format of ['09:00']
  static String formatAppointmentTime(String DateTimeString) {
    DateTime date = DateTime.parse(DateTimeString);
    TimeOfDay time = dateTimeToTimeOfDay(date);
    final String formattedHour = time.hour.toString().padLeft(2, '0');
    final String formattedMinute = time.minute.toString().padLeft(2, '0');
    return '$formattedHour:$formattedMinute';
  }


  static String formatDayOrNight(String DateTimeString) {
    DateTime date = DateTime.parse(DateTimeString);
    final DateFormat formatter = DateFormat('a');
    return formatter.format(date);
  }

  /// Converts DateTime Format into TimeOfDay format
  static TimeOfDay dateTimeToTimeOfDay(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }


}