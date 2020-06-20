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


class Code31Screen extends StatefulWidget {
  @override
  _Code31ScreenState createState() => _Code31ScreenState();
}

class _Code31ScreenState extends State<Code31Screen> {
var code5 = '''
/*
Hamiltonian Cycle - Hamiltonian Path in an undirected adjmat is a path
that visits each vertex exactly once.
A Hamiltonian cycle (or Hamiltonian circuit) is a Hamiltonian Path
such that there is an edge (in the adjmat) from the last vertex to the
first vertex of the Hamiltonian Path.
For more information
Watch "https://www.youtube.com/watch?v=dQr4wZCiJJ4"
This gives a clear explanation regarding the solution
*/

#include<iostream>

#define NODE 5
using namespace std;

int path[NODE];

void printcycle() {

    //Prints the first Hamiltonian cycle found
    cout<<"Hamiltonian Cycle: ";

    for (int i = 0; i < NODE; i++)
        cout << path[i] << " ";

}

bool isValid(int adjmat[NODE][NODE], int v, int k) {

    if (adjmat [path[k-1]][v] == 0)
        return false;

    for (int i = 0; i < k; i++)
        if (path[i] == v)
            return false;

    return true;
}

bool cyclepresent(int adjmat[NODE][NODE], int k) {

    if (k == NODE) {
        if (adjmat[path[k-1]][ path[0] ] == 1 )
            return true;

        else
            return false;
   }

    for (int v = 1; v < NODE; v++) {
        if (isValid(adjmat, v, k)) {
            path[k] = v;

            if (cyclepresent (adjmat, k+1) == true)
                return true;

            path[k] = -1;
        }
   }
    return false;
}

bool hamilcycle(int adjmat[NODE][NODE]) {

    for (int i = 0; i < NODE; i++)
        path[i] = -1;

    path[0] = 0;

    if ( cyclepresent(adjmat, 1) == false ) {
        cout << "Solution does not exist"<<endl;
        return false;
    }

    printcycle();
    return true;
}

int main() {


    cout<<"Enter the connections between the nodes";
    cout<<"Nodes will be marked from 0 to 4";
    cout<<"Enter 0 0 to end the input process";

    int x,y;
    int adjmat[NODE][NODE];

    x=1;
    y=1;
    for(int i=0;i<NODE;i++)
    {
        for(int j=0;j<NODE;j++)
        {
            adjmat[i][j]=0;
        }
    }
    cin>>x>>y;
    while(x!=0 || y!=0)
    {
        adjmat[x][y]=1;
        adjmat[y][x]=1;
        cin>>x>>y;
    }

   hamilcycle(adjmat);
}

/*
Sample Input
0 1
0 3
1 3
1 4
1 2
2 4
3 4
0 0
Sample Output
Hamiltonian Cycle: 0 1 2 4 3
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