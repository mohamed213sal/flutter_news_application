import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  List<String> DrawerTitles = [
    "Explore",
    "read only",
    "last Watched",
    "Preferences",
    "about Us",
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: ListView.builder(
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: (ListTile(
                  title: Text(
                    DrawerTitles[position],
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.red,
                  ),
                  onTap: (){print("do NEXt");},
                )),
              );
            },
            itemCount: DrawerTitles.length),
      ),
    );
  }
}
