import 'package:flutter/material.dart';
import 'package:taskapplication/homeScreen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  TextStyle style_one =
      TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1.5);
  TextStyle style_two =
      TextStyle(color: Colors.green.shade500, fontSize: 25, wordSpacing: 1.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Stack(children: <Widget>[
        _buildPageView(),
        _buildAlignRaisedButton(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0, -50),
                child: Icon(
                  Icons.alarm,
                  size: 80,
                  color: Colors.white,
                ),
              ),
              Text(
                "mohamed amer",
                style: style_one,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "the cotent of this page what is not coming here ya amer we can not be there"
                "news are fake around us and we don't need any one to speak at all",
                textAlign: TextAlign.center,
                style: style_two,
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Align _buildAlignRaisedButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: RaisedButton(
                color: Colors.red,
                child: Text(
                  "GET STARTED",
                  style: style_one,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreenTask();
                  }));
                })),
      ),
    );
  }

  PageView _buildPageView() {
    return PageView.builder(
      itemBuilder: (context, position) {
        return (Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/bg10.png'),
                fit: BoxFit.cover),
          ),
        ));
      },
      itemCount: 4,
    );
  }
}
