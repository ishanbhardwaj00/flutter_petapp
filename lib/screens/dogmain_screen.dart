import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petapp/models/dog_model.dart';


class DestinationScreen extends StatefulWidget {

  Dog dog;
  DestinationScreen({this.dog});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width+70,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                  child: Hero(
                    tag: widget.dog.imageUrl,
                    child: ClipRRect(
                      //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                      child: Image(
                        image: AssetImage(widget.dog.imageUrl),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom:24,
                  child: Container(
                    width: 350,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0,2),
                            blurRadius: 6.0,
                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.dog.breed, style: TextStyle(fontSize: 24)),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(widget.dog.from, style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold,letterSpacing: 1.2),),
                              Text("${widget.dog.age} years ",style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold,letterSpacing: 1.2)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top:50,
                    left:20,
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back, size:30, color: Colors.black,)),),
              ],
            ),
          ),
          //SizedBox(height: 30,),
          Container(height: 200, color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:EdgeInsets.only(left:25, top:25, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(radius: 23, backgroundImage: AssetImage("assets/images/ishan.jpg"),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Ishan Bhardwaj", style: TextStyle(color: Colors.black, letterSpacing: 1.3, fontWeight: FontWeight.bold, fontSize: 24),),
                        Text("Owner", style: TextStyle(color: Colors.black54, fontSize: 20),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Text("My job requires moving to another country. And unfortunately I don't have the oppurtunity to take my pet with me. I am looking for some good people who will shelter my dog",
                style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
          ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfffff3f3),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffc76363),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,4),
                            blurRadius: 6.0,
                            color: Colors.grey,
                          )
                        ]
                      ),
                      child: Icon(Icons.favorite_border, color: Color(0xffe8d6d2)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: 240,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffc76363),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,4),
                              blurRadius: 6.0,
                              color: Colors.grey,
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.pets, color: Color(0xffe8d6d2),),
                          SizedBox(width: 10,),
                          Text("Adoption", style: TextStyle(color: Color(0xffe8d6d2), fontSize: 24,),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
