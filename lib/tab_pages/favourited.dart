import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourited extends StatefulWidget {
  @override
  _FavouritedState createState() => _FavouritedState();
}

class _FavouritedState extends State<Favourited> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/bg14.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("mohamed amer"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text("15 mins"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("lifeStyle"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: IconButton(
                        icon: Icon(Icons.bookmark),
                        color: Colors.grey,
                        onPressed: () {},
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/bg14.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                            "what is the coming shits what is the coming shitswhat is the coming shitswhat is the coming shits"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
      itemCount: 10,
    );
  }
}
