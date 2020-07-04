import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildStackHeader(context),
          _buildTopRecentTitle("Top Stories"),
          _buildCard(),
          _buildCard(),
          _buildCard(),
          _buildTopRecentTitle("Recent Updates"),
          //we have to draw the second card ya amer
          _buildingCardTwo(context,"SPORTS"),
          _buildingCardTwo(context,"FAVOURITES"),
        ],
      ),
    );
  }

  Card _buildingCardTwo(BuildContext context,String title) {
    return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/images/bg14.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  decoration: BoxDecoration(
                    //shape: BoxShape.circle,
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  'we need to build or make drones company ya amer to own the sky of egypt',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),Row(children: <Widget>[
                  Text('15 mins',style: TextStyle(fontSize: 18,),),
                  SizedBox(width:30,),
                  Icon(Icons.timer),
                ],)
              ],
            ),
          ),
        );
  }

  Card _buildCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 8, right: 16, bottom: 8, top: 8),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/bg14.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0, -20),
                  child: Text(
                    'this is the content of Global Warming Global Warming Global Warming Global Warming Global Warming ',
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text('mohamed amer'),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(Icons.timer)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Align _buildTopRecentTitle(String mohamed) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8),
        child: Text(
          mohamed,
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Stack _buildStackHeader(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/bg14.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -60),
          child: Text(
            "this is the title",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "this is the content of the page ya amer solved potter don't tell me that ya amer what is that mohamed ",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
