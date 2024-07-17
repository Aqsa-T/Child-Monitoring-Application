import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/Suspicious%20Sites/keywords_page.dart';
import 'package:fyp_app/Pages/Suspicious%20Sites/possible_danger_page.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';

class SuspiciousMain extends StatefulWidget {
  const SuspiciousMain({super.key});

  @override
  State<SuspiciousMain> createState() => _SuspiciousMainState();
}

class _SuspiciousMainState extends State<SuspiciousMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'SUSPICIOUS SITES',
            style: getMediumStyle(color: Colors.black, fontSize: 20),
          ),
          bottom: TabBar(
            labelColor: AppColors.primary,
            indicatorColor: AppColors.primary,
            unselectedLabelColor: AppColors.grey,
            tabs: const [
              Tab(
                text: "POSSIBLE DANGER",
              ),
              Tab(
                text: "KEYWORDS FOUND",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [SuspiciousSites(), SuspiciousKeywords()],
        ),
      ),
    );
  }
}
