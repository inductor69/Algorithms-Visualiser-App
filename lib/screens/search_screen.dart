import 'package:elearning/screens/Exponential_Search.dart';
import 'package:elearning/screens/astar.dart';
import 'package:elearning/screens/category_screen.dart';
import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header_inner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bellman.dart';
import 'bfs.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  Widget appBarTitle = new Text(
    "Search Example",
    style: new TextStyle(color: Colors.white),
  );
  final TextEditingController _controller = new TextEditingController();

  List searchResult = new List();
  List _list = ["A-Star Search",
"Bellmanford",
"Binary GCD",
"Binary Search",
"Bitonic Sort",
"Breadth First Search",
"Bubble Sort",
"Cocktail Sort",
"Coin Change",
"Centered Square Number"
,"Circular Linked List",
"Chinese Remainder Theorem",
"Comb Sort",
"Cyclic Permutation",
"Dearrangements (DP)",
"Decision Tree",
"Dijkstra Algorithm",
"Disjoint Sets",
"Doubly Linked List",
"Euclidean Algorithm",
"Exponential Search",
"Extended Euclidean Algorithm",
"Factorial",
"Fenwick Tree",
"Fermat Little Theorem.",
"Fibonacci Number (DP)",
"Floyd Warshall Algorithm",
"Ford Fulkerson Method",
"Geometric Progression",
"Gnome Sort",
"Graph",
"Hamiltonian Cycle",
"Heap Sort",
"Heavy Light Decomposition.",
"Insertion Sort",
"Intro Sort",
"Johnson Algorithm",
"Kadane Algorithm",
 "Knapsack Algorithm",
"Knuth Morris Pratt Algorithm",
"Kruskal Algorithm", 
"Linear Search",
"Longest Path",
"Logarithmic Exponent",
"Lucas Theorem",
"Manacher Algorithm",
"Matrix Exponentiation",
"Merge Sort",
"Mo's Algorithm",
"Modular Exponentiation",
"Modular Inverse",
"Palindromic Array",
"Pancake Sort",
"Pigeonhole Sort",
"Postman Sort",
"Prims Algorithm",
"Quick Hull",
"Quick Sort",
"Radix Sort",
"Segment Tree",
"Selection Sort",
"Shell Sort",
"Sieve of Eratosthenes",
"Ternary Search",
"Topological Sort",
"Vegas Algorithm"];
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    
    
    return new Scaffold(
      
      appBar: buildAppBar(context),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            new Flexible(
              child: searchResult.length != 0 || _controller.text.isNotEmpty
                  ? new ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchResult.length,
                      itemBuilder: (BuildContext context, int index) {
                        
                        String listData = searchResult[index][0];
                        return new ListTile(
                          title: new Text(listData.toString()),
                          onTap: () => onTapped(_list, searchResult[index][1]),
                        );
                      },
                    )
                  : new ListView.builder(
                      shrinkWrap: true,
                      itemCount: _list.length,
                      itemBuilder: (BuildContext context, int index) {

                        String listData = _list[index];

                        return new ListTile(
                          title: new Text(listData.toString()),

                          onTap: () => onTapped1(_list, index),

                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
  void onTapped(List _list, index) {
      Navigator.pushNamed(context, '/${_list[index]}');
                  }
  void onTapped1(List _list, index) {
      Navigator.pushNamed(context, '/${_list[index]}');
                  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
      actions: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: new EdgeInsets.symmetric(
                  horizontal: Constants.mainPadding,
                  vertical: Constants.mainPadding),
              height: 34,
              width: 34,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                color: Colors.white.withOpacity(0.3),
                child: Icon(Icons.keyboard_backspace, color: Colors.white),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  onChanged: searchOp,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Constants.textDark,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: "Search courses",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Constants.textDark,
                      ),
                      onPressed: () {
                        debugPrint("Search pressed");
                      },
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  controller: _controller,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void searchOp(String searchText) {
    searchResult.clear();
    print(_list.length);
    for (int i = 0; i < _list.length; i++) {
      String data = _list[i];
      if (data.toLowerCase().contains(searchText.toLowerCase())) {
        searchResult.add([data,i]);
      }
    }

    print(_list.length);
    print(_controller.text);
    print(searchResult.length);
    setState(() {});
  }
}
