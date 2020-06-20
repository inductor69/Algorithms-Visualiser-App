import 'package:elearning/screens/algo_screen.dart';
import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header_inner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'ds_screen.dart';


class VisualScreen extends StatefulWidget {
  @override
  _VisualScreenState createState() => _VisualScreenState();
}

class _VisualScreenState extends State<VisualScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.white
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
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
                  child: Icon(
                      Icons.menu,
                      color: Colors.white
                  ),
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
          HeaderInner(),
          ListView(
            children: <Widget>[

              SizedBox(height: Constants.mainPadding * 3),

              Center(
                child: Text("Visualise Algorithms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: Constants.mainPadding * 2),

              Container(
                padding: EdgeInsets.fromLTRB(
                    Constants.mainPadding,
                    Constants.mainPadding * 2,
                    Constants.mainPadding,
                    Constants.mainPadding
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: ListView(
                  
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    
                    
                    new GestureDetector(
                      onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Bubble Sort.gif'),
    title: Text('Bubble Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
  
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Bubble Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Heapsort.gif'),
    title: Text('Heap Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
  
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_3.png", width: 40, height: 40),
                        color: Constants.lightViolet,
                        title: "Heap Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Insertion Sort.gif'),
    title: Text('Insertion Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
  
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
      Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Insertion Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Merge Sort 2.gif'),
    title: Text('Merge Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
   
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_3.png", width: 40, height: 40),
                        color: Constants.lightViolet,
                        title: "Merge Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Merge Sort.gif'),
    title: Text('Merge Sort 2',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
    
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Merge Sort 2",
                        hours: "Press to Explore",
                      ),
                      
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Quicksort.gif'),
    title: Text('Quick Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
    
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_3.png", width: 40, height: 40),
                        color: Constants.lightViolet,
                        title: "Quick Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Selection Sort 2.gif'),
    title: Text('Selection Sort',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
    
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Selection Sort",
                        hours: "Press to Explore",
                      ),
                    ),
                    new GestureDetector(
                       onTap: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffyDialog(
    image: Image.asset('assets/images/Selection Sort.gif'),
    title: Text('Selection Sort 2',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
    
    entryAnimation: EntryAnimation.TOP,
    onOkButtonPressed: () {
            Navigator.pop(context);

    }, 
  ) );
},
                                          child: CardCourses(
                        image: Image.asset("assets/images/icon_3.png", width: 40, height: 40),
                        color: Constants.lightViolet,
                        title: "Selection Sort 2",
                        hours: "Press to Explore",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}