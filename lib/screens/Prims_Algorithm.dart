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


class Code55Screen extends StatefulWidget {
  @override
  _Code55ScreenState createState() => _Code55ScreenState();
}

class _Code55ScreenState extends State<Code55Screen> {
var code5 = '''
// C++ implementation of Prim's Algorithm to find the Minimum Spanning tree for a weighted, connected and undirected graph.

#include <iostream>
#include <climits>
#define n 6
using namespace std;

// Printing the MST
void printMST(int a[n], int b[n], int weight[n])
{
    int Minweight = 0; // Weight of Minimum spanning tree
    for (int i = 0; i < n - 1; i++)
    {
        cout << "Edge: " << a[i] << "-" << b[i] << " "
             << "cost: " << weight[i] << endl;
        Minweight += weight[i];
    }
    cout << "Minimum Weight is " << Minweight << endl; // Printing the weight of MINIMUM SPANNING TREE
}

void prim(int cost[n][n]) // Function performing prim's algorithm
{
    int u, v, k = 0, counti = 0;
    int visited[n] = { 0 }; // Array containing all the nodes, Initialize with zero as they are not included in MST
    int a[n]; // Array containing the first nodes of all the edges present in MST
    int b[n]; // Array containing the first nodes of all the edges present in MST
    int weight[n]; // Array containing the weights of the edges present in MST
    int minimum;

    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            if (cost[i][j] == 0) //  If i and j nodes are not adjacent
                cost[i][j] = INT_MAX; // Then, initialize them as INFINITE

    visited[0] = 1; // Including the first vertex in MST

    while(counti < n-1)
    {
        minimum = INT_MAX; // Initializing minimum as INFINITE
        for (int i = 0; i < n; i++)
        {
            for (int j = 0; j < n; j++)
            {
                if (visited[i] != 0 && cost[i][j] < minimum) // If the first node is not in MST yet, traverse through all the edges connected through it
                {
                    minimum = cost[i][j]; // To find the minimum cost edge
                    u = i; // First node of determined edge
                    v = j; // Second node of determined edge
                }
            }
        }

        if (visited[u] == 0 || visited[v] == 0) // If the node is not yet included in MST, then include it in MST
        {
            a[k] = u; // Store first node in array
            b[k] = v; // Store second node in array
            weight[k] = cost[u][v]; // Store the determined edge's weight in array
            counti++;
            k++;
            visited[v] = 1; // Vertex included in MST
        }

        cost[u][v] = cost[v][u] = INT_MAX; // Edges getting included in MST will be given the weight of INFINITE
    }

    printMST(a, b, weight); // Printing the MST
}

// Driver program to test above function
int main()
{


    int cost[n][n] = {
        { 0, 3, 0, 0, 6, 5 },
        { 3, 0, 1, 0, 0, 4 },
        { 0, 1, 0, 6, 0, 4 },
        { 0, 0, 6, 0, 8, 5 },
        { 6, 0, 0, 8, 0, 2 },
        { 5, 4, 4, 5, 2, 0 }
    };

    prim(cost); // Calling prim function
    return 0;
}

/*
Output :
Edge: 0-1 cost: 3
Edge: 1-2 cost: 1
Edge: 1-5 cost: 4
Edge: 5-4 cost: 2
Edge: 5-3 cost: 5
Minimum Weight is 15
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