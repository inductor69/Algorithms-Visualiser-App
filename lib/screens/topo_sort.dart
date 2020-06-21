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


class Code64Screen extends StatefulWidget {
  @override
  _Code64ScreenState createState() => _Code64ScreenState();
}

class _Code64ScreenState extends State<Code64Screen> {
var code5 = '''
/*

*
* The following algroithm creates a directed acyclic graph
* and displays the topological order of its vertices
* 
* Topological sorting for Directed Acyclic Graph (DAG) is a
* linear ordering of vertices such that for every directed
* edge uv, vertex u comes before v in the ordering.
*/

#include <iostream>
#include <list>
using namespace std;

// This class represents a directed graph using adjacency list representation
class Graph
{
	int V; // No. of vertices
	list<int> *adj; // Pointer to an array containing adjacency lists
	list<int> sorted_list; // The list of vertices sorted in topological order

	public:
		Graph(int V) // Contsructor
		{
			this->V = V;
			this->adj = new list<int>[V];
		}

		void addEdge(int from, int to) // Function to add an edge to the graph
		{
			this->adj[from].push_back(to); // Add 'to' to the adjecency list of 'from'
		}

		void dfs_explore(bool *visited, int start) // Starts performing DFS from the given 'start' vertex
		{
			visited[start] = true; // Mark this vertex as visited

			// iterate over all the adjecent vertices and perform DFS on them if they are not visited yet
			for (list<int>::iterator i = this->adj[start].begin(); i != this->adj[start].end(); ++i)
			{
				if(!visited[*i]) // if not yet visited
				{
					dfs_explore(visited, *i); // perform DFS
				}
			}

			// This is the most important part of topological sort
			// The first vertex to finish exploration will be the last vertex in the topological sort
			// So ordering the vertices in the reverse of their finished order will give us the sorted list
			this->sorted_list.push_front(start);
		}

		void dfs()
		{
			bool *visited = new bool[this->V]; // variable to keep track of visited vertices
			for(int i = 0; i<this->V; i++)
				visited[i] = false; // initialise all vertices as not visited yet

			for (int i = 0; i < this->V; ++i) // iterate through all vertices
			{
				if(!visited[i]) // if a vertiex is not yet visited
				{
					dfs_explore(visited, i); // perform DFS on it
				}
			}
		}

		void topo_sort()
		{
			dfs(); // perform dfs to create the sorted_list

			// iterate over the sorted_list to display them in order
			for (std::list<int>::iterator i = this->sorted_list.begin(); i != this->sorted_list.end(); ++i)
			{
				cout<<*i<<" ";
			}
			cout<<endl;
		}
};

// main method to try the topological sort
int main()
{
	// create a graph of 8 vertices
	Graph g(8);
	// add edges to it
    g.addEdge(0, 1);	
    g.addEdge(0, 2);	
    g.addEdge(1, 4);	
    g.addEdge(4, 2);	
    g.addEdge(4, 5);	
    g.addEdge(2, 3);
    g.addEdge(3, 5);
    g.addEdge(2, 6);
	g.addEdge(5, 6);
	g.addEdge(7, 5);

    g.topo_sort();
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