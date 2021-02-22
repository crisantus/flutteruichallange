import 'package:flutter/material.dart';
import 'package:flutteruichallange/FlutterUiChallangerFour/challangeFour.dart';

import 'StarterPage.dart';
import 'animation/FadeAnimationThree.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // Write some code to control things, when user press Back navigation button in device navigationBar
        return Navigator.of(context).push(MaterialPageRoute(builder: (context) => StarterPage()));
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0.0,
          brightness: Brightness.light,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(icon: Icon(Icons.shopping_basket),
                color: Colors.grey[800],
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChallangeFourUI()));
                })
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimationThree(1,
                      Text("Food Delivery",style: TextStyle(color: Colors.grey[80],fontWeight: FontWeight.bold,fontSize: 30),)),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FadeAnimationThree(1,makeCategory(isActive: true,title: 'Pizza')),
                          FadeAnimationThree(1.3,makeCategory(isActive: false,title: 'Burgers')),
                          FadeAnimationThree(1.4,makeCategory(isActive: false,title: 'Kebab')),
                          FadeAnimationThree(1.5,makeCategory(isActive: false,title: 'Desert')),
                          FadeAnimationThree(1.6,makeCategory(isActive: false,title: 'Salad')),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                ) ,
              ),
              FadeAnimationThree(1, Padding(
                padding: EdgeInsets.all(20),
                child: Text('Free Delivery',style: TextStyle(color: Colors.grey[700],fontSize: 20,fontWeight: FontWeight.bold),),
              )),
              //take rest of the spaces, with Expand
              Expanded(
                  child:Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimationThree(1.4,makeItem(image:"assets/images/one3.jpg",)),
                        FadeAnimationThree(1.5,makeItem(image:"assets/images/two3.jpg",)),
                        FadeAnimationThree(1.6,makeItem(image:"assets/images/three3.jpg",)),
                        FadeAnimationThree(1.7,makeItem(image:"assets/images/two.jpg",)),
                      ]
                    ),
                  ) ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeCategory({bool isActive, String title}) {
    return AspectRatio(
        aspectRatio: isActive ? 3 : 2.0 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(title,style: TextStyle(color: isActive ? Colors.white : Colors.grey[500],fontSize: 18,fontWeight: isActive ? FontWeight.bold : FontWeight.w100),)),
      ),
    );
  }

  Widget makeItem({String image}) {
    return AspectRatio(aspectRatio: 1.2/1.5,
     child: GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
         image: DecorationImage(
           image: AssetImage(image),
           fit: BoxFit.cover,
         )
       ),
        child: Container(
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              stops: [.2, .9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite,color:Colors.white),
                ),
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$ 15.00",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    Text("Vegetarian Pizza",style: TextStyle(color: Colors.white,fontSize: 18))
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    ),
    );
  }
}
