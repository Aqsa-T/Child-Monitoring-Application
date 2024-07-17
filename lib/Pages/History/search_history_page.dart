// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('history').snapshots(),
      builder: (context, snapshot) {
        if (ConnectionState.waiting == snapshot.connectionState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot history = snapshot.data!.docs[index];
              //use intl package to format the date
              String timestampIso = history['time'].toDate().toString();

              // Convert the timestamp to a DateTime object
              DateTime dateTimeIso = DateTime.parse(timestampIso);

              // Format the DateTime object using intl package
              String formattedDateTimeIso =
                  DateFormat.yMd().add_jms().format(dateTimeIso);

              print(formattedDateTimeIso);

              return history['user_id'] == null
                  ? Container()
                  : ListTile(
                      title: Text(history['url']),
                      subtitle: Text(formattedDateTimeIso),
                    );
            },
          );
        }
      },
    );
  }
}
