import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/Activity/other_activity_page.dart';
import 'package:fyp_app/Resources/styles_manager.dart';

class TimeSpentMain extends StatefulWidget {
  const TimeSpentMain({super.key});

  @override
  State<TimeSpentMain> createState() => _TimeSpentState();
}

class _TimeSpentState extends State<TimeSpentMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'ACTIVITY',
            style: getMediumStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        body: const OtherActvity(),
      ),
    );
  }
}
