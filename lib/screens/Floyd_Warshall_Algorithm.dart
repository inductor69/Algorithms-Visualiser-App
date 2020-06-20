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


class Code26Screen extends StatefulWidget {
  @override
  _Code26ScreenState createState() => _Code26ScreenState();
}

class _Code26ScreenState extends State<Code26Screen> {
var code5 = '''
  
#include <iostream>
#include <limits.h>
#include <iomanip>

#define Infinity INT_MAX
#define A 4

using namespace std;

void FloydWarshall(int graph[A][A]);

void output(int length[A][A]);

void FloydWarshall(int graph[A][A])
{
  int length[A][A],x,y,z;
  for(x = 0; x < A; x++)
    for(y = 0; y < A; y++)
      length[x][y] = graph[x][y];

  for(z = 0; z < A; z++)
    for(x = 0; x < A; x++)
      for(y = 0; y < A; y++)
       { if(length[x][z] != Infinity &&
            length[z][y] != Infinity &&
            length[x][z] + length[z][y] < length[x][y])
            length[x][y] = length[x][z] + length[z][y];
       }
  output(length);
}

void output(int length[A][A])
{
     cout << "The matrix below shows the shortest distances between each pair of vertices";
     for (int x = 0; x < A; x++)
      {
        for (int y = 0; y < A; y++)
        {
          if (length[x][y] == Infinity)
           cout << setw(12) << "INFINITY";
          else
           cout << setw(12) << length[x][y];
        }
       cout << endl;
      }
}

int main() {
  int graph[A][A] = {     {0,8,Infinity, 15},
                          {Infinity, 0,7,Infinity},
                          {Infinity, Infinity, 0,7},
                          {Infinity, Infinity, Infinity,0}
                    };
  FloydWarshall(graph);
  return 0;
}

/* OUTPUT
The matrix below shows the shortest distances between each pair of vertices
           0           8          15          15
    INFINITY           0           7          14
    INFINITY    INFINITY           0           7
    INFINITY    INFINITY    INFINITY           0
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