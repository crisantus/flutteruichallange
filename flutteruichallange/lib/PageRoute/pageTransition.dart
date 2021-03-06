import 'package:flutter/material.dart';
import 'package:flutteruichallange/BottomNavigation/navigation.dart';
import 'package:page_transition/page_transition.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Page Transition'),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Navigation()));
                  },
                  child: Icon(
                    Icons.ac_unit,
                    size: 30,
                  )))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Fade Second Page - Default'),
              onPressed: () {
                Navigator.of(context).push(
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Left To Right Transition Second Page'),
              onPressed: () {
                Navigator.of(context).push(
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Left To Right with Fade Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRightWithFade,
                    alignment: Alignment.topCenter,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Right To Left Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Right To Left with Fade Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeftWithFade,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Top to Bottom Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.topToBottom,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Bottom to Top Second Page'),
              onPressed: () {
                Navigator.of(context).push(
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.bottomToTop,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Scale Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.linear,
                    type: PageTransitionType.scale,
                    alignment: Alignment.topCenter,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Rotate Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    curve: Curves.bounceOut,
                    type: PageTransitionType.rotate,
                    alignment: Alignment.topCenter,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Size Transition Second Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.bounceOut,
                    type: PageTransitionType.size,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            // RaisedButton(
            //   child: Text('Right to Left Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         PageTransition(
            //             alignment: Alignment.bottomCenter,
            //             curve: Curves.easeInOut,
            //             duration: Duration(milliseconds: 600),
            //             reverseDuration: Duration(milliseconds: 600),
            //             type: PageTransitionType.rightToLeftJoined,
            //             child: SecondPage(),
            //             childCurrent: this));
            //   },
            // ),
            // RaisedButton(
            //   child: Text('Left to Right Joined'),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       PageTransition(
            //           alignment: Alignment.bottomCenter,
            //           curve: Curves.easeInOut,
            //           duration: Duration(milliseconds: 600),
            //           reverseDuration: Duration(milliseconds: 600),
            //           type: PageTransitionType.leftToRightJoined,
            //           child: SecondPage(),
            //           childCurrent: this),
            //     );
            //   },
            // ),
            RaisedButton(
              child: Text('PushNamed With arguments'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/second",
                  arguments: "with Arguments",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

///Example second page
class SecondPage extends StatelessWidget {
  /// Page Title
  final String title;

  /// second page constructor
  const SecondPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args ?? "Page Transition Plugin"),
      ),
      body: Center(
        child: Text('Second Page'),
      ),
    );
  }
}
