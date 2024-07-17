import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/colors_manager.dart';
import 'package:fyp_app/Resources/styles_manager.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: getMediumStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "General",
              style: getMediumStyle(color: AppColors.grey, fontSize: 15),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(
                  Iconsax.notification,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Notifications",
                  style: getRegularStyle(color: Colors.black, fontSize: 18),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: AppColors.lightPrimary,
                  activeColor: AppColors.primary,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(
                  Iconsax.notification,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Notifications",
                  style: getRegularStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(
                  Iconsax.directbox_notif,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Contact us",
                  style: getRegularStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: ListTile(
            //     leading: Icon(Iconsax.document_text,color: AppColors.primary,),
            //     title: Text("Terms of use",style: getRegularStyle(color: Colors.black,fontSize: 18),),
            //   ),),
            Expanded(
              flex: 1,
              child: ListTile(
                leading: Icon(
                  Iconsax.trash,
                  color: AppColors.primary,
                ),
                title: Text(
                  "Clear App Cache",
                  style: getRegularStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[200],
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
          ],
        ),
      ),
    );
  }
}
