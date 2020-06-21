import 'package:elearning/screens/prims.dart';
import 'package:elearning/screens/search_screen.dart';
import 'package:elearning/screens/topo_sort.dart';
import 'package:elearning/utils/const.dart';
import 'package:elearning/widgets/card_courses.dart';
import 'package:elearning/widgets/header_inner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'BinarySearch.dart';
import 'Bitonic.dart';
import 'Centered_Square_Number.dart';
import 'Chinese.dart';
import 'Circular_Linked_List.dart';
import 'Cyclic_Permutation.dart';
import 'DECISION_TREE.dart';
import 'Dearrangements_DP.dart';
import 'Dijkstra_Algorithm.dart';
import 'Disjoint_Sets.dart';
import 'Doubly_Linked_List.dart';
import 'Euclidean_Algorithm.dart';
import 'Exponential_Search.dart';
import 'Extended_Euclidean_Algorithm.dart';
import 'Factorial.dart';
import 'Fenwick_Tree.dart';
import 'Fermat_Little_Theorem.dart';
import 'Fibonacci_Number.dart';
import 'Floyd_Warshall_Algorithm.dart';
import 'Ford_Fulkerson_Method.dart';
import 'Geometric_Progression.dart';
import 'Gnome_Sort.dart';
import 'Graph.dart';
import 'Hamiltonian_Cycle.dart';
import 'HeavyLightDecomposition..dart';
import 'Insertion_Sort.dart';
import 'Intro_Sort.dart';
import 'JohnsonAlgorithm.dart';
import 'Kadane_Algorithm.dart';
import 'Knapsack.dart';
import 'Knuth_Morris_Pratt_Algorithm.dart';
import 'Kruskal_Algorithm.dart';
import 'LinearSearch.dart';
import 'Logarithmic_Exponent.dart';
import 'LongestPath.dart';
import 'Lucas_Theorem.dart';
import 'Manacher_Algorithm.dart';
import 'MatrixExponentiation.dart';
import 'MergeSort.dart';
import 'Mo_Algorithm.dart';
import 'Modular_Exponentiation.dart';
import 'Modular_Inverse.dart';
import 'Palindromic_Array.dart';
import 'Pancake_Sort.dart';
import 'Pigeonhole_Sort.dart';
import 'Postman_Sort.dart';
import 'Prims_Algorithm.dart';
import 'Quick_Hull.dart';
import 'Quick_Sort.dart';
import 'Radix_Sort.dart';
import 'SegTreeSum.dart';
import 'Selection-sort.dart';
import 'ShellSort.dart';
import 'SieveofEratosthenes.dart';
import 'TernarySearch.dart';
import 'VEGASAlgorithm.dart';
import 'astar.dart';
import 'bellman.dart';
import 'binary.dart';
import 'bubblesort.dart';
import 'category_screen.dart';
import 'bfs.dart';
import 'cocksort.dart';
import 'coin_change.dart';
import 'comb_sort.dart';
import 'heapsort.dart';


class AlgoScreen extends StatefulWidget {
  @override
  _AlgoScreenState createState() => _AlgoScreenState();
}

class _AlgoScreenState extends State<AlgoScreen> {

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
                      Icons.search,
                      color: Colors.white
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SearchScreen()),
  );
}
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
                child: Text("Algorithms & \nData Structures ",
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
                child: ListView(
                  
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code1Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "A-Star Search",
                        hours: "Press to Continue",
                      ),
                    ),
                    
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code2Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Bellmanford",
                        hours: "Press to Continue",
                      ),
                    ),
                    
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code3Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Binary GCD",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code4Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Binary Search",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code5Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Bitonic Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CodeScreen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Breadth First Search",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code6Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Bubble Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code7Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Cocktail Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code8Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Coin Change",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code9Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Centered Square Number",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code10Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Circular Linked List",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code11Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Chinese Remainder Theorem",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code12Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Comb Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code13Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Cyclic Permutation",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code14Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Dearrangements (DP)",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code15Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Decision Tree",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code16Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Dijkstra Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code17Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Disjoint Sets",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code18Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Doubly Linked List",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code19Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Euclidean Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code20Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Exponential Search",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code21Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Extended Euclidean Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code22Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Factorial",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code23Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Fenwick Tree",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code24Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Fermat Little Theorem.",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code25Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Fibonacci Number (DP)",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code26Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Floyd Warshall Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code27Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Ford Fulkerson Method",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code28Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Geometric Progression",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code29Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Gnome Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code30Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Graph",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code31Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Hamiltonian Cycle",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code33Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Heap Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code32Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Heavy Light Decomposition.",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code34Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Insertion Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code35Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Intro Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code36Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Johnson Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code37Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Kadane Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code38Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Knapsack Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code39Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Knuth Morris Pratt Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code40Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Kruskal Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code41Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Linear Search",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code42Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Longest Path",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code43Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Logarithmic Exponent",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code44Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Lucas Theorem",
                        hours: "Press to Continue",
                      ),
                    ),
                      new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code45Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Manacher Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                   new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code46Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Matrix Exponentiation",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code47Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Merge Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code48Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Mo's Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code50Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Modular Exponentiation",
                        hours: "Press to Continue",
                      ),
                    ),
                  
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code49Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Modular Inverse",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code51Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Palindromic Array",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code52Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Pancake Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code53Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Pigeonhole Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                   new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code54Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Postman Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code66Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Prim's Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                  
                    
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code56Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Quick Hull",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code57Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Quick Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code58Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Radix Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code59Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Segment Tree",
                        hours: "Press to Continue",
                      ),
                    ),
                   new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code60Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Selection Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                      new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code61Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Shell Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code62Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Sieve of Eratosthenes",
                        hours: "Press to Continue",
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code63Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Ternary Search",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code64Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Topological Sort",
                        hours: "Press to Continue",
                      ),
                    ),
                     new GestureDetector(
                      onTap: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Code65Screen()),
                                );
                              },
                        child: CardCourses(
                        image: Image.asset("assets/images/icon_2.png", width: 40, height: 40),
                        color: Constants.lightYellow,
                        title: "Vegas Algorithm",
                        hours: "Press to Continue",
                      ),
                    ),
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}