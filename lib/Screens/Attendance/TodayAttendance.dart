// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:school_management/Widgets/Attendance/AttendanceCard.dart';

class TodayAttendance extends StatefulWidget {
  TodayAttendance({super.key});

  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AttendanceCard(
            attendance: true,
            staff: "Deepak",
            date: "12/03/2323",
            // subject: "English",
          ),
        ],
      ),
    );
  }
}
