// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Resources/styles_manager.dart';

class ThreatOverview extends StatelessWidget {
  const ThreatOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Column(
              children: [
                Icon(
                  Iconsax.data,
                  size: 100,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "No Data to Show",
                  style: getRegularStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    );
  }
}
