import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header_inner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/night-owl.dart';

import 'category_screen.dart';
import 'bfs.dart';
import 'package:giffy_dialog/giffy_dialog.dart';


class Code45Screen extends StatefulWidget {
  @override
  _Code45ScreenState createState() => _Code45ScreenState();
}

class _Code45ScreenState extends State<Code45Screen> {
var code5 = '''
#include <stdio.h> 
#include <string.h> 
#include<bits/stdc++.h>
using namespace std; 

int min(int a, int b) 
{ 
    int res = a; 
    if(b < a) 
        res = b; 
    return res; 
} 
int main() 
{ 	
    char text[100]; 
    cout<<"Enter the string:";
    cin>>text; 
    int N = strlen(text); 
    N = 2*N + 1; //count the next position
    int L[N]; //array to store longest palindrome length
    L[0] = 0; 
    L[1] = 1; 
    int center = 1; //centerPosition  
    int right = 2; //centerRightPosition 
    int currentright = 0; //currentRightPosition 
    int currentleft; //currentLeftPosition 
    int plength = 0; //maximum length of palindrome
    int x = 0; //maxLPSCenterPosition
    int start = -1; 
    int end = -1; 
    int diff = -1; 
     
    for (currentright = 2; currentright < N; currentright++)  
    { 
        
        currentleft  = 2*center-currentright; 
        L[currentright] = 0; 
        diff = right - currentright; 
        
        if (diff > 0) 
            L[currentright] = min(L[currentleft], diff); 
  
        
        while (((currentright + L[currentright]) < N && (currentright - L[currentright]) > 0) &&( ((currentright + L[currentright] + 1) % 2 == 0) ||(text[(currentright + L[currentright] + 1)/2] == text[(currentright- L[currentright] - 1)/2] ))) 
        	{ 
            	L[currentright]++; 
        	} 
  
        if(L[currentright] > plength)   
        { 
            plength = L[currentright]; 
            x = currentright; 
        } 
  
        if (currentright + L[currentright] > right)  
        { 
            center = currentright; 
            right = currentright + L[currentright]; 
        } 
        
    } 
    
    start = (x- plength)/2; 
    end = start + plength - 1; 
    cout<<"LPS of string is :";
    
    for(currentright=start; currentright<=end; currentright++) 
        cout<< text[currentright]; 
    cout<<""; 
    
  
    return 0; 
} 
''';
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
                child: Text("Code Snippet",
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
                child: new HighlightView(
      // The original Code3 to be highlighted
      code5,

      // Specify language
      // It is recommended to give it a value for performance
      language: 'cpp',

      // Specify highlight theme
      // All available themes are listed in `themes` folder
      theme: nightOwlTheme,

      // Specify padding
      padding: EdgeInsets.all(12),

      // Specify text style
      textStyle: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 16,
      ),
    )

              ),
            ],
          ),
        ],
      ),
    );
  }
}