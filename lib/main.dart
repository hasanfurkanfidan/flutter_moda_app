
import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/detay.dart';

void main(){
  runApp(new ModaApp());
}

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4,vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(indicatorColor:Colors.grey,controller: tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.more,color: Colors.grey,size: 16,),),
              Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,size: 16,),),
              Tab(icon: Icon(Icons.navigation,color: Colors.grey,size: 16,),),
              Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,size: 16,),),


            ],
        ),
      ),
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Moda Uygulaması",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
        actions: <Widget>[
       IconButton(icon: Icon(Icons.camera_alt),color: Colors.black,onPressed: (){},)
        ],
      ),
      body: ListView(

        children: <Widget>[
          Container(

            height: 135,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),

              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani("assets/model1.jpeg","assets/chanellogo.jpg"),
                SizedBox(width: 30,),
                listeElemani("assets/model2.jpeg","assets/louisvuitton.jpg"),
                SizedBox(width: 30,),
                listeElemani("assets/model3.jpeg","assets/chloelogo.png"),
                SizedBox(width: 30,),
                listeElemani("assets/model1.jpeg","assets/chanellogo.jpg"),
                SizedBox(width: 30,),
                listeElemani("assets/model2.jpeg","assets/louisvuitton.jpg"),
                SizedBox(width: 30,),
                listeElemani("assets/model3.jpeg","assets/chloelogo.png"),

              ],
            ),
          ),
          AddingCard(context)
        ],
      ),
    );
  }

Widget  listeElemani(String imagePath, String logoPath) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              image: DecorationImage(image:AssetImage(imagePath),fit: BoxFit.cover)
            ),
          ),
        
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(image: AssetImage(logoPath),fit: BoxFit.cover)
              ),
            ),
          ),

        ],
      ),
      SizedBox(height: 5,),
      Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown

        ),
        child: Center(child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 14),)),
      )
    ],
  );
  }

Widget  AddingCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 5,

        child: Container(
          height: 500,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(

                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay("assets/model1.jpeg")));
                    },
                    child: Hero(
                      tag:"assets/model1.jpeg" ,
                      child: Container(

                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          image: DecorationImage(image: AssetImage("assets/model1.jpeg"),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                  width: MediaQuery.of(context).size.width-300,
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Daisy",style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                          Text("24 days ago",style: TextStyle(fontSize: 10,color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert,color: Colors.grey,size: 21,)
                ],
              ),
              SizedBox(height: 15,),
              Text(
                "This official website features a ribbed a knit zitter,It looks very good",
                style: TextStyle(fontSize: 12,color: Colors.grey),
              ),
              SizedBox(height: 15,),

              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      addedImageRow()
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: (MediaQuery.of(context).size.width-100)/2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"),fit: BoxFit.cover),

                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 100,
                        width: (MediaQuery.of(context).size.width-100)/2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"),fit: BoxFit.cover),

                        ),
                      ),


                    ],
                  ),

                ],
              ),
              SizedBox(height: 9,),
              Row(

                children: <Widget>[
                  Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text(
                        "# Loise vuitton",style: TextStyle(
                          fontSize:10 ,color: Colors.brown
                      ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text(
                        "# Chloe",style: TextStyle(
                          fontSize:10 ,color: Colors.brown
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Divider(),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Icon(Icons.reply,color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text("1.7k",style: TextStyle(fontSize: 11,color: Colors.grey),)
                  ,
                  SizedBox(width: 12,),
                  Icon(Icons.message,color: Colors.grey,),
                  SizedBox(width: 5,),
                  Text("1k",style: TextStyle(fontSize: 11,color: Colors.grey),),
                  Container(
                    width: MediaQuery.of(context).size.width-172,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.favorite,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text("2.3k",style: TextStyle(fontSize: 11,color: Colors.grey,),)
                      ],
                    ),
                  )
                ],
              )


            ],
          ),
        ),

      ),
    );

  }

 Widget addedImageRow() {
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detay("assets/modelgrid1.jpeg")));
    },
    child: Hero(
      tag:"assets/modelgrid1.jpeg" ,
      child: Container(
         height: 200,
        width: (MediaQuery.of(context).size.width-50)/2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"),fit: BoxFit.cover),

        ),
       ),
    ),
  );
  }


}

