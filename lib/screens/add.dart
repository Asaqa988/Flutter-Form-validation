import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  TextEditingController idcontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController coursecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
            shrinkWrap: false,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Text(
                "fill the id",
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: idcontroller,
                decoration: InputDecoration(hintText: 'enter the id'),
              ),
              SizedBox(
                height: 30,
              ),
              Text("fill the name", style: TextStyle(fontSize: 30)),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(hintText: 'please enter the name'),
              ),
              SizedBox(
                height: 30,
              ),
              Text("fill the discount", style: TextStyle(fontSize: 30)),
              TextField(
                controller: coursecontroller,
                decoration: InputDecoration(hintText: 'has a discount ?'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    CollectionReference db =
                        FirebaseFirestore.instance.collection("students");
                    db.add({
                      "name": namecontroller.text,
                      "id": idcontroller.text,
                      "haveAdiscount": coursecontroller.text,
                      "thedateofcreation":DateTime.now()
                    });
                  },
                  child: Text("Add the data"))
            ]),
      ),
    );
  }
}
