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

class Code54Screen extends StatefulWidget {
  @override
  _Code54ScreenState createState() => _Code54ScreenState();
}

class _Code54ScreenState extends State<Code54Screen> {
var code5 = '''
/*
* C++ Implementation for Postman Sort Algorithm.
* This is the algorithm used by letter-sorting machines in the post office: 
* first states, then post offices, then routes, etc. 
* Since keys are not compared against each other, sorting time is O(cn), 
* where c depends on the size of the key and number of buckets.
*/

#include <bits/stdc++.h>
using namespace std;

void arrange(int p, int s);
int temp, maxdigits = 0, c = 0;
int t1, t2, k, t, n = 1, i, j;
int arr[100], arr1[100];
int main(){
    int count, max;
    cout << "The size of the Array : " ;
    cin >> count;
    int arr[count];
    for(i = 0; i < count; i++)
        cin >> arr[i];
    
    cout << "The Unsorted Array is : " ;
    for(i = 0; i < count; i++) 
        cout << arr[i] << " ";
    
    for(i = 0; i < count; i++) {
        // first element in t
        t = arr[i];
        // Calculating the Number of digits using logarithmic
        c = log10(arr[i]);
        // number of digits in a each number
        if(maxdigits < c)
            maxdigits = c;
    }

    while(--maxdigits)
        n = n * 10;
    
    for(i = 0; i < count; i++) {
        // MSB - Dividing by particular base
        max = arr[i] / n;
        t = i;
        for(j = i + 1; j < count; j++) {
            if(max > arr[j] / n) {
                max = arr[j] / n;
                t = j;
            }
        }
        swap(arr1[t], arr1[i]);
        swap(arr[t], arr[i]);
    }

    while (n >= 1) {
        for(i = 0; i < count;) {
            t1 = arr[i] / n;
            for(j = i + 1; t1 == (arr[j] / n); j++);
            arrange(i, j);
            i = j;
        }
        n = n / 10;
    }

    cout << "The Sorted Array is : ";
    for(int i = 0; i < count; i++) 
        cout << arr[i] << " ";
    cout << "";
    return 0;
}

// Function to arrange the of sequence having same base 
void arrange(int p, int s) {
    for(int i = p; i < s - 1; i++) {
        for(int j = i + 1; j < s; j++) {
            if(arr1[i] > arr1[j]) {
                // swap arr1[i] and arr1[j]
                swap(arr1[i], arr1[j]);

                temp = arr[i] % 10;
                arr[i] = arr[j] % 10;
                arr[j] = temp;
            }
        }
    }
}

/*
INPUT :
The size of the Array : 10
70, 80, 20, 50, 10, 60, 40, 100, 90, 30
OUTPUT : 
The Unsorted Array is : 
70 80 20 50 10 60 40 100 90 30
The Sorted Array is : 
10 20 30 40 50 60 70 80 90 100
*/
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