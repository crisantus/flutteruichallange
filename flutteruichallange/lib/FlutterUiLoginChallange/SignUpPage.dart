import 'package:flutter/material.dart';
import 'package:flutteruichallange/FlutterUiLoginChallange/AnimationLogin.dart';
import 'package:flutteruichallange/FlutterUiUnboardingScreen/OnBoardingScreen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);//to send back
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
              child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 30,),
                    FadeAnimationLogin(1.2,Text("Sign Up",style: 
                    TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                    SizedBox(height: 20,),
                    FadeAnimationLogin(1.3,Text("Sign up a new Account its free",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700]
                    ),)),
                  ],
                ),
                SizedBox(height: 30,),
                
                   Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      FadeAnimationLogin(1.4,makeInput(label: "Email")),
                      FadeAnimationLogin(1.5,makeInput(label: "Password",obsureText: true)),
                      FadeAnimationLogin(1.6,makeInput(label: "Confirm Password",obsureText: true)),
              
                    ],
                  ),
                
                ),
                FadeAnimationLogin(1.7,Container(
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container( child:
                    Container( 
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OnBoardingScreen()));
                          },
                          color: Colors.greenAccent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text("Sign Up", style: TextStyle(
                            fontWeight: FontWeight.w600, 
                            fontSize: 18
                          ),),
                        ),
                      )
                  ),
                  ),
                ),
                ),
                SizedBox(height: 30,),
                FadeAnimationLogin(1.8,Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ALready have an Account"),
                    Text("Sign up",style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }


   Widget makeInput({label,obsureText=false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
          ),),
          SizedBox(height: 5,),
          TextField(
            obscureText: obsureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400]
                )
              )
            ),
          ),
          SizedBox(height: 30,)
      ],
    );
  }
}
