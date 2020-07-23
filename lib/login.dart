import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'models/home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF381742),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ClipPath(
              clipper: ClipperPath(),
              child: Container(
                height: 450,
                color: Color(0xFF421c4f),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width-50,
              child: SvgPicture.asset("assets/images/coverpagefinal.svg",
              width: MediaQuery.of(context).size.width-50,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              top:60,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: Image(
                      image: AssetImage(
                        "assets/images/logo.png",
                       ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Make a New Friend !", style: TextStyle(fontSize: 32, color: Colors.white,fontFamily: 'WoodfordBournePRO', fontWeight: FontWeight.w300, letterSpacing: 1.3),),
                  SizedBox(height: 10,),
                  Text("Adopt a Pet today", style: TextStyle(fontSize: 24, color: Color(0xFFc2a193),fontFamily: 'WoodfordBournePRO', fontWeight: FontWeight.w300, letterSpacing: 1.3),),
                  SizedBox(height: 30,),
                  FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                    onPressed: () {
                        fadeAnimation(context);
                    },
                    color: Color(0xFFffb951),
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                        child: Text("LET'S GO !", style: TextStyle(fontSize: 22, fontFamily: 'WoodfordBournePRO', ),))
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path= Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height-300);
    path.quadraticBezierTo(size.width/2, 20, size.width,size.height-300);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}

fadeAnimation(BuildContext context) {
  Navigator.push(context, PageRouteBuilder(
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> sanimation, Widget child) {
        return FadeTransition(opacity: animation, child: child,);
      },
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> sanimation ) {
        return HomePage();
      }
  ),);
}