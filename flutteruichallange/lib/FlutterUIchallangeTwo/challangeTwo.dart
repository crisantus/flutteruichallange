import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruichallange/FlutterUiChallangeOne/FadeAnimation.dart';
import 'package:flutteruichallange/FlutterUiChallangeThree/StarterPage.dart';

class UIchallangeTwo extends StatefulWidget {
  @override
  _UIchallangeTwoState createState() => _UIchallangeTwoState();
}

class _UIchallangeTwoState extends State<UIchallangeTwo> with SingleTickerProviderStateMixin{

  PageController _pageController;

  int totalPage = 4;

  void _onScroll(){
    //print('ssss');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pageController=PageController(
      initialPage: 0,
    )..addListener(_onScroll);
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
          page: 1,
          images: 'assets/images/one2.jpg',
          title: 'Yosemite National Park',
          description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
         makePage(
          page: 2,
          images: 'assets/images/two2.jpg',
          title: 'Golden Gate Bridge',
          description: 'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
        makePage(
          page: 3,
          images: 'assets/images/three.jpg',
          title: 'Sedona',
          description: "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
         makePage(
          page: 4,
          images: 'assets/images/two.jpg',
          title: 'Savannah',
          description: "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }

  Widget makePage({images,title,description,page}){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(images),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Padding(
          padding:EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  FadeAnimation(2, Text(page.toString(), style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                  Text("/"+totalPage.toString(),style: TextStyle(color: Colors.white,fontSize: 15),)
                ],
              ),
              Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(1,
                          Text(title, style: TextStyle(color: Colors.white, fontSize: 50, height: 1.2, fontWeight: FontWeight.bold),)
                      ),
                      SizedBox(height: 10,),
                     FadeAnimation(1.5, Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 5),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 5),
                            child: Icon(Icons.star,color: Colors.grey,size: 15,),
                          ),
                          Text('4.0',style: TextStyle(color:Colors.white70),),
                          Text('(2300)',style: TextStyle(color:Colors.white38,fontSize: 12),),
                        ],
                      ),
                      ),
                      SizedBox(height: 10,),
                      FadeAnimation(2,Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(description,style: TextStyle(color: Colors.white.withOpacity(.7),height: 1.9,fontSize: 15),),
                      ),),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                       StarterPage()));
                        },
                          child: FadeAnimation(2.5, Text('READ MORE', style: TextStyle(color: Colors.white),))),
                      SizedBox(height: 30,),
                    ],
                  )
              )
            ],
            )
          ),
        ),

    );
  }
}
