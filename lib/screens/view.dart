import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class View_Screen extends StatefulWidget {
  const View_Screen({super.key});

  @override
  State<View_Screen> createState() => _View_ScreenState();
}

class _View_ScreenState extends State<View_Screen> {
  CollectionReference studentdb =
      FirebaseFirestore.instance.collection("students");

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: studentdb.orderBy("thedateofcreation").snapshots(),
      builder: (BuildContext context, snapshot) {
        return Scaffold(
            appBar: AppBar(),
            body: Center(
                child: ListView.builder(
              itemCount: snapshot.data!.size,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Text(
                      snapshot.data!.docs[i]['haveAdiscount'].toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      snapshot.data!.docs[i]['id'].toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      snapshot.data!.docs[i]['name'],
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                );
              },
            )));
      },
    );
  }
}
