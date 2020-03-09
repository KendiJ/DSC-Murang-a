import 'package:dsc_muranga/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";
import 'package:flutter/widgets.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // **** double.infinity fills the whole screen with color ****
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[600],
              Colors.orange[400],
            ]
          )
        ),
        // ******* Text area *******
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.5,Text("Welcome back", style: TextStyle(color: Colors.white, fontSize: 20),) ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30), //re-sizes the column
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [BoxShadow(
                            color: Color.fromARGB(225, 95, 27, 3),
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email:",
                                  hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                  border: InputBorder.none

                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password:",
                                    hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                    border: InputBorder.none

                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forgot password", style: TextStyle(color: Colors.grey, fontSize: 16),),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange[900]
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(color: Colors.white,  fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text("Continue with Social Media", style: TextStyle(color: Colors.grey, fontSize: 16),),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                              ),
                              child: Center(
                                child: Text("Facebook", style: TextStyle(color: Colors.white,  fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ),

                          ),
                          SizedBox(width: 30,),
                          SizedBox(height: 30,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("GitHub", style: TextStyle(color: Colors.white,  fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ),

                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
