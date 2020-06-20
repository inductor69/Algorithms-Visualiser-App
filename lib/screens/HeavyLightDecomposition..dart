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


class Code32Screen extends StatefulWidget {
  @override
  _Code32ScreenState createState() => _Code32ScreenState();
}

class _Code32ScreenState extends State<Code32Screen> {
var code5 = '''
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <time.h>
#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <algorithm>
#include <queue>
#include <stack>
#include <set>
#include <map>
#include <complex>
#define MAX_N 1000001
#define INF 987654321
using namespace std;
typedef long long lld;
typedef unsigned long long llu;

/*
 Heavy-Light Decomposition algorithm for partitioning the edges of a tree into two groups - heavy and light.
 Can be used for efficient traversal from any node to the root of the tree, since there are at most log n light edges
 along that path; hence, we can skip entire chains of heavy edges.
 Complexity: O(n)
*/

struct Node
{
     vector<int> adj;
};
Node graf[MAX_N];

struct TreeNode
{
     int parent;
     int depth;
     int chainTop;
     int subTreeSize;
};
TreeNode T[MAX_N];

int DFS(int root, int parent, int depth)
{
     T[root].parent = parent;
     T[root].depth = depth;
     T[root].subTreeSize = 1;
     for (int i=0;i<graf[root].adj.size();i++)
     {
          int xt = graf[root].adj[i];
          if (xt == parent) continue;
          T[root].subTreeSize += DFS(xt, root, depth+1);
     }
     return T[root].subTreeSize;
}

void HLD(int root, int parent, int chainTop)
{
     T[root].chainTop = chainTop;
     
     for (int i=0;i<graf[root].adj.size();i++)
     {
          int xt = graf[root].adj[i];
          if (xt == parent) continue;
          if (T[xt].subTreeSize*1.0 > T[root].subTreeSize*0.5) HLD(xt, root, chainTop);
          else HLD(xt, root, xt);
     }
}

inline int LCA(int u, int v)
{
     while (T[u].chainTop != T[v].chainTop)
     {
          if (T[T[u].chainTop].depth < T[T[v].chainTop].depth) v = T[T[v].chainTop].parent;
          else u = T[T[u].chainTop].parent;
     }
     
     if (T[u].depth < T[v].depth) return u;
     else return v;
}

int n;

int main()
{
     n = 7;
     
     graf[1].adj.push_back(2);
     graf[2].adj.push_back(1);
     
     graf[1].adj.push_back(3);
     graf[3].adj.push_back(1);
     
     graf[1].adj.push_back(4);
     graf[4].adj.push_back(1);
     
     graf[3].adj.push_back(5);
     graf[5].adj.push_back(3);
     
     graf[3].adj.push_back(6);
     graf[6].adj.push_back(3);
     
     graf[3].adj.push_back(7);
     graf[7].adj.push_back(3);
     
     DFS(1, 1, 0);
     HLD(1, 1, 1);
     
     printf("%d", LCA(5, 7));
     printf("%d", LCA(2, 7));
     
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