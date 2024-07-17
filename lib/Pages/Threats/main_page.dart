import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/Threats/details_page.dart';
import 'package:fyp_app/Pages/Threats/overview_page.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';

class ThreatMain extends StatefulWidget {
  const ThreatMain({super.key});

  @override
  State<ThreatMain> createState() => _ThreatMainState();
}

class _ThreatMainState extends State<ThreatMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'THREATS',
            style: getMediumStyle(color: Colors.black, fontSize: 20),
          ),
          bottom: TabBar(
            labelColor: AppColors.primary,
            indicatorColor: AppColors.primary,
            unselectedLabelColor: AppColors.grey,
            tabs: const [
              Tab(
                text: "OVERVIEW",
              ),
              Tab(
                text: "DETAILS",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [ThreatOverview(), ThreatDetails()],
        ),
      ),
    );
  }
}
