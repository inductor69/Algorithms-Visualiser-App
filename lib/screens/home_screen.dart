import 'package:elearning/screens/category_screen.dart';
import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'algo_screen.dart';
import 'ds_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: new EdgeInsets.symmetric(
                    horizontal: Constants.mainPadding,
                    vertical: Constants.mainPadding
                ),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(Icons.menu, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                   onPressed: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/lol.gif'),
    title: Text('Developed By :-',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
  
    entryAnimation: EntryAnimation.TOP,
    description: Text(
                              'Aditya Kumar\n Pradyumn Rahar',
                              textAlign: TextAlign.center,
                            
                              style: TextStyle(  fontSize:20 ),
                            ),
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Header(),
          Padding(
            padding: EdgeInsets.all(Constants.mainPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                SizedBox(height: Constants.mainPadding * 2),

                // 1. Welcome User
                Text("Welcome back\nStudent!",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),
                ),

                SizedBox(height: Constants.mainPadding),

                

                SizedBox(height: Constants.mainPadding),

                // 3. Start Learning Button Section
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFEF3F3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Text("Start Learning \nNew Stuff!",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants.textDark
                            ),
                          ),

                          SizedBox(height: 10.0),

                          // Categories Button
                          Container(
                            width: 150,
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child:
                                      Text("Categories",
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CategoryScreen()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    // Image Researching Girl
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset("assets/images/researching.png",
                          width: 200,
                          height: 104,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),

                Text("Courses in progress",
                    style: TextStyle(
                      color: Constants.textDark,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                ),

                SizedBox(height: 20.0),

                // List of courses
                ListView(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    
                   
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AlgoScreen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Algorithms & DS",
                        hours: "67 Algorithms",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DSScreen()),
                                );
                              },
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_3.png", width: 40, height: 40),
                        color: Constants.lightViolet,
                        title: "C++ Cheat Sheet",
                        hours: "Tap to Explore",
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}