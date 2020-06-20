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


class CodeScreen extends StatefulWidget {
  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
var code = '''/* Given a graph where every edge has weight as either 0 or 1. 
 A source vertex is also given in the graph. 
 Find the shortest path from source vertex to every other vertex.
 Complexity O(V+E) */

#include<bits/stdc++.h> 
#define V 1000

using namespace std; 

int dist[V];  // array to store the shortest distances
// the graph stores vectors of int pairs such that graph[node].first = destination node & graph[node].second = edge weight
vector < pair <int , int> > graph[V];
deque <int> Q; // keeps track of edges during BFS

//FUNCTIONS: 

int distbfs(int i, int v) // returns the new distance to the destination node
{
    return dist[v] + graph[v][i].second;
}

/* To print shortest distance from given source (here, 0) to 
 every other node */
void zeroOneBFS(int source, int n) 
{ 
    // Marking distances of all nodes from the source except itself as infinity  
    int i = 0;
    while (i < n) 
    {
        if (i == source)
        {
            dist[i] = 0; // distance of source from itself is 0
            Q.push_back(i); 
        }
        else
            dist[i] = INT_MAX; // other vertices
        i++;
    }

    while (!Q.empty()) 
    { 
        int v = Q.front(); 
        Q.pop_front(); 

        for (int i = 0; i < graph[v].size(); i++) 
        { 
        // checks for the shortest distance to the nodes
            if (dist[graph[v][i].first] > distbfs(i, v)) 
            { 
                dist[graph[v][i].first] = distbfs(i, v); 

                /* Put destination vertex connected by 0 edge to front and vertex connected by 1 
                edge to back so that vertices are processed 
                in ascending order of weights. */
                if (graph[v][i].second == 0) 
                    Q.push_front(graph[v][i].first); 
                else
                    Q.push_back(graph[v][i].first); 
            } 
        } 
    } 

    // printing the dist array that stores the shortest distances 
    for (int i = 0; i < n; i++) 
        cout << dist[i] << endl; 
} 

// function to add edges to the graph
void addEdge(int u, int v, int wt) 
{
    graph[u].push_back( make_pair(v, wt)); 
    graph[v].push_back( make_pair(u, wt)); 
}

// to initialise the graph
void create_graph()
{
    addEdge(0, 1, 0); 
    addEdge(0, 7, 1); 
    addEdge(1, 7, 1); 
    addEdge(1, 2, 1); 
    addEdge(2, 3, 0); 
    addEdge(2, 5, 0); 
    addEdge(2, 8, 1); 
    addEdge(3, 4, 1); 
    addEdge(3, 5, 1); 
    addEdge(4, 5, 1); 
    addEdge(5, 6, 1); 
    addEdge(6, 7, 1); 
    addEdge(7, 8, 1); 
}

int main() 
{ 
    int n = 9; // no of vertices
    int e = 13; // no of edges
    create_graph();
    int source = 0; // start BFS from 0 
    zeroOneBFS(source, n); 
} 
/*OUTPUT:
0
0
1
1
2
1
2
1
2
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
      // The original code to be highlighted
      code,

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