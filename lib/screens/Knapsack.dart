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


class Code38Screen extends StatefulWidget {
  @override
  _Code38ScreenState createState() => _Code38ScreenState();
}

class _Code38ScreenState extends State<Code38Screen> {
var code5 = '''
                                                                     /*DESCRIPTION*/

                                            /*Reusing precalculated results is nothing but Dynamic Programming*/
/*In 0-1 Knapsack problem, WE are given a Knapsack (a kind of bag) and several items with their weight and profit. The bag has a maximum capacity of weight it can hold.
Now your task is to maximise the profit by choosing several items. It is called 0-1 because of the decision values, either an item will be taken or it will be discarded.
The right approach to solve it is using DP (dynamic programming). Let the capacity of Knapsack be K, and there be N items, wt[]  be the array of weights and
wt[i] be the weight of ith item; P[] be the array of profits and P[i] be the profit gained by ith item.
Now you need to maximise Sigma (P[i]), take the sum as SUM. and constraint is Sigma (wt[i]) We can solve it using DP.*/

                                                                  /*SOURCE CODE*/

#include <iostream>

using namespace std;

int max(int a, int b)              // A utility function that returns maximum of two integers
{
    return (a > b) ? a : b;
}

int knapSack(int K, int wt[], int P[], int n)               // Returns the maximum value that can be put in a knapsack of capacity W
{
    int i, w;
    int DP[n + 1][K + 1];

    for(i = 0; i <= n; i++)
    {
        for(w = 0; w <= K; w++)
        {
            if(i == 0 || w == 0)
               DP[i][w] = 0;
            else if(wt[i - 1] <= w)
              DP[i][w] = max(P[i - 1] + DP[i - 1][w - wt[i - 1]], DP[i - 1][w]);
            else
              DP[i][w] = DP[i - 1][w];
        }
    }

    return DP[n][K];
}

int knapSack_large(int K, int wt[], int P[], int n)
{
    int i, w;
    int DP[2][K + 1];

    for(i = 1; i <= K; i++)
        DP[0][i] = 0;
    DP[0][0] = 0;
    DP[1][0] = 0;

    for(i = 1; i <= n; i++)
    {
        for(w = 1; w <= K; w++)
        {
            if(wt[i - 1] <= w)
                DP[i & 1][w] = max(P[i - 1] + DP[!(i & 1)][w - wt[i - 1]], DP[!(i & 1)][w]);
            else
                DP[i & 1][w] = DP[!(i & 1)][w];
        }
    }

    return DP[n & 1][K];
}

int main()
{
    int P[] = {11, 22, 33, 44, 55};
    int wt[] = {111, 121, 131, 141, 151};
    int K = 300;
    int n = sizeof(wt) / sizeof(wt[0]);

	cout << knapSack(K, wt, P, n);

        cout << endl << "Memory Optimised KnapSack " << knapSack_large(K, wt, P, n);
    return 0;
}


/* Output
99
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