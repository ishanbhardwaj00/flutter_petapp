import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petapp/tabs/bird_tab.dart';
import 'package:petapp/tabs/cat_tab.dart';
import 'package:petapp/tabs/dog_tab-newsliver.dart';

import 'dog_model.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  PageController pageController= PageController( );

  int scroll;
  int sIndex=0;
  int val;
  int index=0;
  List<String> string =[
    "Dog", "Cat", "Bird", "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async=>false,
        child: GestureDetector(
         onTap: () =>FocusScope.of(context).requestFocus(new FocusNode())
          ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 60,),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/images/menu.svg"),

                  ),
                        CircleAvatar(radius: 14.0, backgroundImage: AssetImage("assets/images/d.jpg"),)],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text("Search For A Pet", style: TextStyle(fontFamily: "WoodfordBournePRO",fontSize: 24,letterSpacing: 1.3),),
              ),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                width: 375,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFf6f6f6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: TextField(

                    decoration: InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.only(left:10),
                        child: Icon(Icons.search, size: 20, color: Color(0xFFb4b4b4),),
                      ),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Color(0xFFB4B4B4)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 120,
                color: Colors.white,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: string.length,itemBuilder: (BuildContext context, val) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          pageController.jumpToPage(val);

                          sIndex=val;
                        });
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: 92,
                            height: 82,
                            decoration: BoxDecoration(
                              color: sIndex==val? Color(0xfffcc7c6): Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                offset: Offset(0,2),
                                color: Colors.grey,
                                blurRadius: 1.0
                      ) ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: 85,
                            height: 75,
                            decoration: BoxDecoration(
                              color: sIndex==val? Color(0xfff85e5e): Color(0xfff6f6f6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(string[val], style: TextStyle(color: sIndex==val? Colors.white: Colors.black, fontSize: 16),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                })
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (val) {
                    setState(() {
                      sIndex=val;
                      pageController.jumpToPage(val);
                    });
                  },
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    DogTab(),
                    CatTab(),
                    BirdTab(),
                    Center(
                      child: Text("LOL"),
                    ),
                  ],
                ),
              ),
            ]
    ),
        ),
      ),
    );
  }
}
