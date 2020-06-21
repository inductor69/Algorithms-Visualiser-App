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


class Code16Screen extends StatefulWidget {
  @override
  _Code16ScreenState createState() => _Code16ScreenState();
}

class _Code16ScreenState extends State<Code16Screen> {
var code5 = '''
#include <iostream>
#include <climits>

using namespace std;

const int numberVertex = 10;

int minDistance(int distance[], bool ShortestPathTree[])
{
    int min = INT_MAX, min_index;

    for(int vertex = 0; vertex < numberVertex; vertex++)
    {
        if(ShortestPathTree[vertex] == false && distance[vertex] <= min)
        {
            min = distance[vertex];
            min_index = vertex;
        }
    }

    return min_index;
}

void dijkstra(int graph[numberVertex][numberVertex], int source)
{
    int distance[numberVertex];
    bool ShortestPathTree[numberVertex];

    for(int i = 0; i < numberVertex; i++)
    {
        distance[i] = INT_MAX;
        ShortestPathTree[i] = false;
    }

    distance[source] = 0;

    for(int count = 0; count < numberVertex - 1; count++)
    {
        int u = minDistance(distance, ShortestPathTree);

        ShortestPathTree[u] = true;

        for(int vertex = 0; vertex < numberVertex; vertex++)
            if(ShortestPathTree[vertex] == 0 && graph[u][vertex] != 0 &&
                distance[u] != INT_MAX && distance[u] + graph[u][vertex] < distance[vertex])
                distance[vertex] = distance[u] + graph[u][vertex];
    }

    cout << "Distance from Source:" << endl;
    cout << "Vertex\t\tDistance" << endl;
    for(int i = 0; i < numberVertex; i++)
        cout << i << "\t\t" << distance[i] << endl;
}

int main()
{
    int graph[numberVertex][numberVertex] = {{0, 14, 0, 7, 0, 0, 0, 8, 0, 10},
                                             {14, 0, 8, 0, 0, 0, 0, 11, 0, 0},
                                             {0, 8, 0, 7, 0, 4, 0, 0, 2, 0},
                                             {7, 0, 7, 0, 9, 12, 0, 0, 0, 5},
                                             {0, 0, 0, 9, 0, 0, 0, 0, 0, 0},
                                             {0, 0, 4, 0, 0, 0, 2, 0, 0, 11},
                                             {0, 0, 0, 12, 0, 2, 0, 1, 6, 15},
                                             {8, 11, 0, 0, 0, 0, 1, 0, 7, 0},
                                             {0, 0, 2, 0, 0, 0, 6, 7, 0, 0},
                                             {10, 0, 0, 5, 0, 11, 15, 0, 0, 0}};

    dijkstra(graph, 0);

    return 0;
}


/* Output
Distance from Source:
Vertex		Distance
0		0
1		14
2		14
3		7
4		16
5		11
6		9
7		8
8		15
9		10
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