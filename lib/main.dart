import 'package:flutter/material.dart';

import 'login.dart';


void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFFffb951),
        primaryColor: Colors.white,
        fontFamily: "WoodfordBournePRO",
      ),
      home: Login(),
  )
  );
}

