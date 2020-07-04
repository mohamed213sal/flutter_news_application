import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:taskapplication/homeScreen.dart' ;
import 'on_boarding_pages/onBoarding.dart';
import 'shared_ui/app_theme.dart';
/*there were some errors during the importing operation but we could make it clear ua_amer this is awesome*/
main(){
WidgetsFlutterBinding.ensureInitialized();
  runApp(myApp());
}

//this is just a test for using git program ua amer test_one
class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: NewTheme.themePropreties,
      debugShowCheckedModeBanner :false ,
      home:OnBoarding() ,
    );

  }
}
