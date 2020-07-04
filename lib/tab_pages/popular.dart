import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return _buildCard() ;
    },itemCount: 15,);
  }
}
Card _buildCard() {
  return Card(
    child: Row(children: <Widget>[
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
