import 'package:flutter/material.dart';
import 'package:semi_final/screens/add.dart';
import 'package:semi_final/screens/view.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ListTile(
              title: Text("go to the add page"),
              leading: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Add_Screen();
                    },
                  ));
                },
              ),
            ),
            ListTile(
              title: Text("go to the update page"),
              leading: IconButton(
                icon: Icon(Icons.update),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("go to the remove page"),
              leading: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text("go to the view page"),
              leading: IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return View_Screen();
                    },
                  ));
                },
              ),
            ),
          ]),
        ));
  }
}
