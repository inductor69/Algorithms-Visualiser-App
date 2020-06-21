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

class Code20Screen extends StatefulWidget {
  @override
  _Code20ScreenState createState() => _Code20ScreenState();
}

class _Code20ScreenState extends State<Code20Screen> {
var code5 = '''
//An exponential search (for sorted array) is a combination of two methods:
//1.Find the range in which the element exists.
//2.Perform a binary search in that range.
//Time Complexity : O(Log n)

#include <stdio.h>
#include <stdlib.h>
#include <bits/stdc++.h> 
using namespace std; 

 int binarySearch(int arr[], int start, int end, int key);

 int exponentialSearch(int arr[], int size, int key) 
{ 
   if (arr[0] == key) 
        return 0; 
   int i = 1; 
   while (i < size && arr[i] <= key) 
        i = i*2; 
   int x;
   // i should not be greater than size for searching
   if (i > size)
      x=size;
   else 
      x=i;
   return binarySearch(arr, i/2,x, key); 
} 

 int binarySearch(int arr[], int start, int end, int key) 
{ 
    if (end >= start) 
    { 
        int mid = start + (end - start)/2; 
        if (arr[mid] == key) 
            return mid; 
        if (arr[mid] > key) 
            return binarySearch(arr, start, mid-1, key); 
        return binarySearch(arr, mid+1, end, key); 
    } 
  return -1; 
} 

 int main() 
{  
   int size; 
   cout<<"Enter the size of the array ";
   cin>>size;
   int arr[size];
   cout<<"Enter the elements ";
   for (int i=0;i<size;i++)
       cin>>arr[i] ; 

   int key; 
   cout<<"Enter the element that you want to search ";
   cin>>key;

    int result ;
   result = exponentialSearch(arr,size, key);
   if(result == -1)
      cout<<"Element is not present in array" ;
   else
      cout<<"Element is present at index "<< result;

    return 0; 
}
//INPUT:Enter the size of the array 5
//Enter the elements 1
//2
//3
//4
//5
//Enter the element that you want to search 4
//OUTPUT:Element is present at index 3
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