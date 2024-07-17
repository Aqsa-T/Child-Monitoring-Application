import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/History/search_history_page.dart';
import 'package:fyp_app/Resources/styles_manager.dart';

class HistoryMain extends StatefulWidget {
  const HistoryMain({super.key});

  @override
  State<HistoryMain> createState() => _HisotryMainState();
}

class _HisotryMainState extends State<HistoryMain> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'HISTORY',
            style: getMediumStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        body: const SearchHistory(),
      ),
    );
  }
}
