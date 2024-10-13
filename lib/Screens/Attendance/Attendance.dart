// ignore_for_file: library_private_types_in_public_api, file_names, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:school_management/Screens/Attendance/OverallAttendance.dart';
import 'package:school_management/Screens/Attendance/TodayAttendance.dart';
import 'package:school_management/Widgets/AppBar.dart';
import 'package:school_management/Widgets/MainDrawer.dart';
import 'package:school_management/Widgets/UserDetailCard.dart';

class Attendance extends StatefulWidget {
  Attendance({super.key});

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: CommonAppBar(
        title: "Attendance",
        menuenabled: true,
        notificationenabled: true,
        ontap: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      drawer: Drawer(
        elevation: 0,
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UserDetailCard(),
            DefaultTabController(
              length: 1, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black26,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(text: 'Today'),
                        Tab(text: 'Overall'),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.68, //height of TabBarView
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        TodayAttendance(),
                        OverallAttendance(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
