
import 'package:flutter/material.dart';

class Detay extends StatefulWidget{
  @override
  String link;
  Detay(this.link);
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _DetayState(link);
  }

}

class _DetayState extends State<Detay> {
  String link;
  _DetayState(this.link);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(

            tag: widget.link,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(link),fit: BoxFit.cover)
              ),

            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(image:AssetImage("assets/dress.jpg"),fit: BoxFit.contain)
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("LAMINATED",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            SizedBox(height: 4,),
                            Text("Louis vuittom",style: TextStyle(fontSize: 16,color: Colors.grey),),
                            SizedBox(height: 10,),
                            Container(height: 30,width: MediaQuery.of(context).size.width-170,child: Text("One Dress",style: TextStyle(fontSize: 16,color: Colors.grey),)),


                          ],
                        ),
                      ],
                    ),

                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$6500",style: TextStyle(fontSize: 30),),
                          FloatingActionButton(
                            child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                            backgroundColor: Colors.brown,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],

      ),
    );
  }

}