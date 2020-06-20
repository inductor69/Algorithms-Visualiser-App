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


class Code53Screen extends StatefulWidget {
  @override
  _Code53ScreenState createState() => _Code53ScreenState();
}

class _Code53ScreenState extends State<Code53Screen> {
var code5 = '''
//The pigeonhole algorithm works as follows:
//1.Given an array of values to be sorted, set up an auxiliary array of initially empty
//"holes," one pigeonhole for each key through the range of the original array.
//2.Going over the original array, put each value into the pigeonhole corresponding
//to its key, such that each pigeonhole eventually contains a list of all values with that key.
//3.Iterate over the pigeonhole array in order, and put elements from non-empty 
//pigeonholes back into the original array.

#include <stdio.h> 
#include <stdlib.h>
#include <bits/stdc++.h> 
using namespace std; 

void pigeonholesort(int arr[], int size) 
{ 
   int min = arr[0], max = arr[0]; 
   // Finding min value and max values in the array arr[]
   for (int i = 1; i < size; i++) 
   { 
        if (arr[i] < min) 
            min = arr[i]; 
        if (arr[i] > max) 
            max = arr[i]; 
   } 
   int range;
   range = max - min + 1;
   //Creating the holes
   int holes[range];
   for(int i=0;i<range;i++)
           holes[i]=0;
   //Filling the holes
   for (int j=0; j < size;j++)
          holes[arr[j] - min]++;
 
   // Put the elements back into the array in order.
   // k is the index of sorted array
   int k=0;
   for (int count = 0; count < range; count++)
      while (holes[count]-- > 0)
        {
              arr[k] = count + min;
              k=k+1;
        }
}

int main() 
{
   int size,i;
   cout<<"Enter the size of the array ";
   cin>>size;
   int arr[size];
   cout<<"Enter the elements ";
   for ( i=0;i<size;i++)
       cin>>arr[i] ;
  
   pigeonholesort(arr,size); 
  
   cout<<"Sorted array: "; 
   for (i = 0; i < size; i++) 
        cout<<arr[i]<<" "; 
   return 0; 
} 

//INPUT:Enter the size of the array 5
//Enter the elements -10
//5
//0
//9
//8
//OUTPUT:Sorted array: 
//-10 0 5 8 9 
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