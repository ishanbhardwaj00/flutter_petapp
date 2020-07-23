import 'package:flutter/material.dart';
import 'package:petapp/models/bird_model.dart';

class BirdTab extends StatefulWidget {
  @override
  _BirdTabState createState() => _BirdTabState();
}

class _BirdTabState extends State<BirdTab> {
  int val;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
             (BuildContext context, val ) {
              return Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    left:135,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        width: 240,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 4.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(bird[val].breed, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                            SizedBox(height: 3,),
                            Text(bird[val].from, style: TextStyle(fontSize: 18, color: Colors.black54),),
                            SizedBox(height: 6,),
                            Text("${bird[val].age} years, dog", style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),
                            Container(
                                width: 100,
                                child: Text(bird[val].description, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54),)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFe4b6b6),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 4.0,
                              color: Colors.grey,
                            ),
                          ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(bird[val].imageUrl),
                        ),
                      ),
                    ),
                  ),

                ],
              );;
            }, childCount: bird.length,
          ),
        ),
      ],
    );

  }
}
