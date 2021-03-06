import 'package:flutter/material.dart';
import 'package:petapp/models/dog_model.dart';
import 'package:petapp/screens/dogmain_screen.dart';

class DogTab extends StatefulWidget {
  @override
  _DogTabState createState() => _DogTabState();
}

class _DogTabState extends State<DogTab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(itemCount: dog.length, itemBuilder: (BuildContext context, int val) {
          return GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return DestinationScreen(dog: dog[val],);
                }));
              });
            },
            child: Stack(
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
                          Text(dog[val].breed, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          Text(dog[val].from, style: TextStyle(fontSize: 18, color: Colors.black54),),
                          SizedBox(height: 6,),
                          Text("${dog[val].age} years, dog", style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Container(
                              width: 100,
                              child: Text(dog[val].description, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black54),)),
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
                    child: Hero(
                      tag: dog[val].imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(dog[val].imageUrl),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}
