import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header_inner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/night-owl.dart';
import 'package:giffy_dialog/giffy_dialog.dart';


class Code2Screen extends StatefulWidget {
  @override
  _Code2ScreenState createState() => _Code2ScreenState();
}

class _Code2ScreenState extends State<Code2Screen> {
var code2 = '''
// A C++ program for Bellman-Ford's single source 
// shortest path algorithm. 
#include <bits/stdc++.h> 
using namespace std; 

// The main function that finds shortest 
// distances from src to all other vertices 
// using Bellman-Ford algorithm. The function 
// also detects negative weight cycle 
// The row graph[i] represents i-th edge with 
// three values u, v and w. 
void BellmanFord(int graph[][3], int V, int E, 
				int src) 
{ 
	// Initialize distance of all vertices as infinite. 
	int dis[V]; 
	for (int i = 0; i < V; i++) 
		dis[i] = INT_MAX; 

	// initialize distance of source as 0 
	dis[src] = 0; 

	// Relax all edges |V| - 1 times. A simple 
	// shortest path from src to any other 
	// vertex can have at-most |V| - 1 edges 
	for (int i = 0; i < V - 1; i++) { 

		for (int j = 0; j < E; j++) { 
			if (dis[graph[j][0]] + graph[j][2] < 
							dis[graph[j][1]]) 
				dis[graph[j][1]] = 
				dis[graph[j][0]] + graph[j][2]; 
		} 
	} 

	// check for negative-weight cycles. 
	// The above step guarantees shortest 
	// distances if graph doesn't contain 
	// negative weight cycle. If we get a 
	// shorter path, then there is a cycle. 
	for (int i = 0; i < E; i++) { 
		int x = graph[i][0]; 
		int y = graph[i][1]; 
		int weight = graph[i][2]; 
		if (dis[x] != INT_MAX && 
				dis[x] + weight < dis[y]) 
			cout << "Graph contains negative"
					" weight cycle"
				<< endl; 
	} 

	cout << "Vertex Distance from Source" << endl; 
	for (int i = 0; i < V; i++) 
		cout << i << "\t\t" << dis[i] << endl; 
} 

// Driver program to test above functions 
int main() 
{ 
	int V = 5; // Number of vertices in graph 
	int E = 8; // Number of edges in graph 

	// Every edge has three values (u, v, w) where 
	// the edge is from vertex u to v. And weight 
	// of the edge is w. 
	int graph[][3] = { { 0, 1, -1 }, { 0, 2, 4 }, 
					{ 1, 2, 3 }, { 1, 3, 2 }, 
					{ 1, 4, 2 }, { 3, 2, 5 }, 
					{ 3, 1, 1 }, { 4, 3, -3 } }; 

	BellmanFord(graph, V, E, 0); 
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
      // The original code to be highlighted
      code2,

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