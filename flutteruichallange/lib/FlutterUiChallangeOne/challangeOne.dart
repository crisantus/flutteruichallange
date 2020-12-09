import 'package:flutter/material.dart';
import 'package:flutteruichallange/FlutterUIchallangeTwo/challangeTwo.dart';

class UIchallangeOneI extends StatefulWidget {
  @override
  _UIchallangeOneIState createState() => _UIchallangeOneIState();
}

class _UIchallangeOneIState extends State<UIchallangeOneI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243,243 , 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black87,),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => UIchallangeTwo()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find Your", style: TextStyle(color: Colors.black87,fontSize: 25),),
                      SizedBox(height: 5,),
                      Text("Inspiration",style: TextStyle(color: Colors.black, fontSize: 40,fontWeight:FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243,243 , 1),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                           border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.black87,),
                            hintText: "Search you'er looking for",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Promo Today', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                           promoCard("assets/images/one.jpg",'One'),
                           promoCard("assets/images/two.jpg",'Two'),
                           promoCard("assets/images/three.jpg",'Three'),
                           promoCard("assets/images/four.jpg",'Four'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/three.jpg")),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:LinearGradient(
                                  stops: [0.1,0.9],
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.1),
                                  ])
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("Best Design",style: TextStyle(
                                color: Colors.white,fontSize: 20
                              ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }

  Widget promoCard(image,text){
    return AspectRatio(
        aspectRatio:2.6/3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
            image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:LinearGradient(
                stops: [0.1,0.9],
                  begin: Alignment.bottomRight,
                   colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(text,style: TextStyle(
                  color: Colors.white,fontSize: 20
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
