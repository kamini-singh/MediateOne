import 'package:flutter/material.dart';
import 'package:meditation_app/homepg.dart';


class Splash extends StatefulWidget {
  static String id = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState()
  {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8fb2ff),
      body: Align(
        alignment: Alignment.center,
        child:
            Center(
              child: Image.asset('assets/Meditateone.png',
                width:200,
                height: 200,),
            ),

      ),
    );

  }
}
