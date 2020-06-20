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


class Code48Screen extends StatefulWidget {
  @override
  _Code48ScreenState createState() => _Code48ScreenState();
}

class _Code48ScreenState extends State<Code48Screen> {
var code5 = '''
#include <stdio.h>
#include <stdlib.h>
#include <bits/stdc++.h> 
using namespace std; 
  
int block; 
struct Query 
{ 
    int start;
    int end; 
}; 
  

bool compare(Query a, Query b) ;
void queryResults(int arr[], int size, Query q[], int no) ; 
  
int main() 
{   
  int size,i; 
  cout<<"Enter the size of the array ";
  cin>>size;
  int arr[size];
  cout<<"Enter the elements ";
  for ( i=0;i<size;i++)
     cin>>arr[i] ; 
  int no;
  cout<<"Enter the numbers of query ";
  cin>>no;
     
  Query q[no];
  for (i=0 ;i<no;i++)
   {
      cout<<"Enter the start of the query ";
      cin>>q[i].start;
      cout<<"Enter the end of the query ";
      cin >>q[i].end;
   } 
   
  queryResults(arr, size, q, no); 
  return 0; 
} 

bool compare(Query a, Query b) 
{ 
   if (a.start/block != b.start/block) 
      return a.start/block <b.start/block; 
   return a.end < b.end; 
}

void queryResults(int arr[], int size, Query q[], int no) 
{ 
   block = (int)sqrt(size); 
   sort(q, q + no, compare); 
   int currentstart = 0, currentend = 0; 
   int currentsum = 0; 
   for (int i=0; i<no; i++) 
     { 
        int start = q[i].start, end = q[i].end; 
        while (currentstart < start) 
        { 
            currentsum -= arr[currentstart]; 
            currentstart++; 
        } 
        while (currentstart > start) 
        { 
            currentsum += arr[currentstart-1]; 
            currentstart--; 
        } 
        while (currentend <= end-1) 
        { 
            currentsum += arr[currentend]; 
            currentend++; 
        } 
        while (currentend > end) 
        { 
            currentsum -= arr[currentend-1]; 
            currentend--; 
        } 
        cout << "Sum of [" << start << ", " << end 
             << "] is "  << currentsum << endl; 
    } 
}
//INPUT:Enter the size of the array 5
//Enter the elements 1
//2
//3
//4
//5
//Enter the numbers of query 2
//Enter the start of the query 0
//Enter the end of the query 3
//Enter the start of the query 2
//Enter the end of the query 4
//Sum of [0, 3] is 6
//Sum of [2, 4] is 7
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