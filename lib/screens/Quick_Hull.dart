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


class Code56Screen extends StatefulWidget {
  @override
  _Code56ScreenState createState() => _Code56ScreenState();
}

class _Code56ScreenState extends State<Code56Screen> {
var code5 = '''
/*
Quickhull Algorithm for Convex Hull
Given a set of points, a Convex hull is the smallest convex polygon containing
all the given points.
Input is an array of points specified by their x and y coordinates.
Output is a convex hull of this set of points in ascending order of x coordinates.
*/


#include<iostream>
#include<bits/stdc++.h>
using namespace std;

#define ptspr pair<int,int>

set<ptspr> ipts;
set<ptspr> finalpts;


int findside(ptspr p1, ptspr p2, ptspr p)
{
    int val=(( p2.first - p1.first )*( p.second - p1.second ))-
            (( p2.second - p1.second )*( p.first - p1.first ));

    if( val > 0 )
    {
        return 1;
    }

    if( val == 0 )
    {
        return 0;
    }

    if( val < 0 )
    {
        return -1;
    }
}

int distance( ptspr p1, ptspr p2, ptspr p )
{
    return abs(( p.second - p1.second )*( p2.first - p1.first )-
                ( p2.second - p1.second )*( p.first - p1.first ));
}

void findhull(ptspr a[], int n, ptspr p1, ptspr p2, int side)
{
    int ind = -1;
    int max_dist = 0;

    for(int i=0; i<n; i++)
    {
        int temp = distance( p1, p2, a[i] );
        if( findside( p1, p2, a[i] ) == side && temp > max_dist )
        {
            ind = i;
            max_dist = temp;
        }
    }

    if( ind == -1 )
    {
        finalpts.insert( p1 );
        finalpts.insert( p2 );
        return;
    }

    findhull(a, n, a[ind], p1, -findside( a[ind], p1, p2 ));
    findhull(a, n, a[ind], p2, -findside( a[ind], p2, p1 ));
}

void finalptsonhull(ptspr a[], int n)
{
    if(n < 3)
    {
        cout<<"Convex hull not possible";
        return;
    }

    int minx = 0,maxx = 0;

    for(int i=0; i<n; i++)
    {
        if( minx > a[i].first )
            minx = a[i].first;

        if( maxx < a[i].first )
            maxx=a[i].first;
    }

    findhull(a, n, a[minx], a[maxx], 1);

    findhull(a, n, a[minx], a[maxx], -1);

    cout<<"The points on the Hull are:";

    while(!finalpts.empty())
    {
        cout<<"("<<( *finalpts.begin() ).first<<","<<(*finalpts.begin()).second<<")"<<"/n";

        finalpts.erase(finalpts.begin());
    }
}

int main()
{
    int x, y, n;
    cout<<"Enter number of points ";
    cin>>n;

    ptspr a[n];
    for(int i=0; i<n; i++)
    {
        cin>>x>>y;
        a[i] = make_pair(x,y);
    }

    finalptsonhull(a, n);

    return 0;
}

/*
Input : points[] = {{0, 3}, {1, 1}, {2, 2}, {4, 4},
                    {0, 0}, {1, 2}, {3, 1}, {3, 3}};
Output :  The points on the Hull are:
          (0, 0) (0, 3) (3, 1) (4, 4)
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