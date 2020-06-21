import 'package:elearning/screens/BinarySearch.dart';
import 'package:elearning/screens/Bitonic.dart';
import 'package:elearning/screens/Centered_Square_Number.dart';
import 'package:elearning/screens/Chinese.dart';
import 'package:elearning/screens/Circular_Linked_List.dart';
import 'package:elearning/screens/Cyclic_Permutation.dart';
import 'package:elearning/screens/DECISION_TREE.dart';
import 'package:elearning/screens/Dearrangements_DP.dart';
import 'package:elearning/screens/Dijkstra_Algorithm.dart';
import 'package:elearning/screens/Disjoint_Sets.dart';
import 'package:elearning/screens/Doubly_Linked_List.dart';
import 'package:elearning/screens/Euclidean_Algorithm.dart';
import 'package:elearning/screens/Exponential_Search.dart';
import 'package:elearning/screens/Extended_Euclidean_Algorithm.dart';
import 'package:elearning/screens/Factorial.dart';
import 'package:elearning/screens/Fenwick_Tree.dart';
import 'package:elearning/screens/Fermat_Little_Theorem.dart';
import 'package:elearning/screens/Fibonacci_Number.dart';
import 'package:elearning/screens/Floyd_Warshall_Algorithm.dart';
import 'package:elearning/screens/Ford_Fulkerson_Method.dart';
import 'package:elearning/screens/Geometric_Progression.dart';
import 'package:elearning/screens/Gnome_Sort.dart';
import 'package:elearning/screens/Graph.dart';
import 'package:elearning/screens/Hamiltonian_Cycle.dart';
import 'package:elearning/screens/HeavyLightDecomposition..dart';
import 'package:elearning/screens/Insertion_Sort.dart';
import 'package:elearning/screens/Intro_Sort.dart';
import 'package:elearning/screens/JohnsonAlgorithm.dart';
import 'package:elearning/screens/Kadane_Algorithm.dart';
import 'package:elearning/screens/Knapsack.dart';
import 'package:elearning/screens/Knuth_Morris_Pratt_Algorithm.dart';
import 'package:elearning/screens/Kruskal_Algorithm.dart';
import 'package:elearning/screens/LinearSearch.dart';
import 'package:elearning/screens/Logarithmic_Exponent.dart';
import 'package:elearning/screens/LongestPath.dart';
import 'package:elearning/screens/Lucas_Theorem.dart';
import 'package:elearning/screens/Manacher_Algorithm.dart';
import 'package:elearning/screens/MatrixExponentiation.dart';
import 'package:elearning/screens/MergeSort.dart';
import 'package:elearning/screens/Mo_Algorithm.dart';
import 'package:elearning/screens/Modular_Exponentiation.dart';
import 'package:elearning/screens/Modular_Inverse.dart';
import 'package:elearning/screens/Palindromic_Array.dart';
import 'package:elearning/screens/Pancake_Sort.dart';
import 'package:elearning/screens/Pigeonhole_Sort.dart';
import 'package:elearning/screens/Postman_Sort.dart';
import 'package:elearning/screens/Prims_Algorithm.dart';
import 'package:elearning/screens/Quick_Hull.dart';
import 'package:elearning/screens/Quick_Sort.dart';
import 'package:elearning/screens/Radix_Sort.dart';
import 'package:elearning/screens/SegTreeSum.dart';
import 'package:elearning/screens/Selection-sort.dart';
import 'package:elearning/screens/ShellSort.dart';
import 'package:elearning/screens/SieveofEratosthenes.dart';
import 'package:elearning/screens/TernarySearch.dart';
import 'package:elearning/screens/VEGASAlgorithm.dart';
import 'package:elearning/screens/astar.dart';
import 'package:elearning/screens/bellman.dart';
import 'package:elearning/screens/bfs.dart';
import 'package:elearning/screens/binary.dart';
import 'package:elearning/screens/bubblesort.dart';
import 'package:elearning/screens/cocksort.dart';
import 'package:elearning/screens/coin_change.dart';
import 'package:elearning/screens/comb_sort.dart';
import 'package:elearning/screens/heapsort.dart';
import 'package:elearning/screens/home_screen.dart';
import 'package:elearning/screens/prims.dart';
import 'package:elearning/screens/topo_sort.dart';
import 'package:elearning/screens/visual.dart';
import 'package:elearning/utils/const.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes: {
         '/A-Star Search': (context) => Code1Screen(),
         '/Bellmanford': (context) =>  Code2Screen(),
         '/Binary GCD': (context) => Code3Screen(),
         
"/Binary Search":  (context) => Code4Screen(),
"/Bitonic Sort": (context) => Code5Screen(),
"/Breadth First Search": (context) => CodeScreen(),
"/Bubble Sort":(context) => Code6Screen(),
"/Cocktail Sort":(context) => Code7Screen(),
"/Coin Change":(context) => Code8Screen(),
"/Centered Square Number":(context) => Code9Screen(),
"/Circular Linked List":(context) => Code10Screen(),
"/Chinese Remainder Theorem":(context) => Code11Screen(),
"/Comb Sort":(context) => Code12Screen(),
"/Cyclic Permutation":(context) => Code13Screen(),
"/Dearrangements (DP)":(context) => Code14Screen(),
"/Decision Tree":(context) => Code15Screen(),
"/Dijkstra Algorithm":(context) => Code16Screen(),
"/Disjoint Sets":(context) => Code17Screen(),
"/Doubly Linked List":(context) => Code18Screen(),
"/Euclidean Algorithm":(context) => Code19Screen(),
"/Exponential Search":(context) => Code20Screen(),
"/Extended Euclidean Algorithm":(context) => Code21Screen(),
"/Factorial":(context) => Code22Screen(),
"/Fenwick Tree":(context) => Code23Screen(),
"/Fermat Little Theorem.":(context) => Code24Screen(),
"/Fibonacci Number (DP)":(context) => Code25Screen(),
"/Floyd Warshall Algorithm":(context) => Code26Screen(),
"/Ford Fulkerson Method":(context) => Code27Screen(),
"/Geometric Progression":(context) => Code28Screen(),
"/Gnome Sort":(context) => Code29Screen(),
"/Graph":(context) => Code30Screen(),
"/Hamiltonian Cycle":(context) => Code31Screen(),
"/Heap Sort":(context) => Code33Screen(),
"/Heavy Light Decomposition.":(context) => Code32Screen(),
"/Insertion Sort":(context) => Code34Screen(),
"/Intro Sort":(context) => Code35Screen(),
"/Johnson Algorithm":(context) => Code36Screen(),
"/Kadane Algorithm":(context) => Code37Screen(),
 "/Knapsack Algorithm":(context) => Code38Screen(),
"/Knuth Morris Pratt Algorithm":(context) => Code39Screen(),
"/Kruskal Algorithm":(context) => Code40Screen(),
"/Linear Search":(context) => Code41Screen(),
"/Longest Path":(context) => Code42Screen(),
"/Logarithmic Exponent":(context) => Code43Screen(),
"/Lucas Theorem":(context) => Code44Screen(),
"/Manacher Algorithm":(context) => Code45Screen(),
"/Matrix Exponentiation":(context) => Code46Screen(),
"/Merge Sort":(context) => Code47Screen(),
"/Mo's Algorithm":(context) => Code48Screen(),
"/Modular Exponentiation":(context) => Code50Screen(),
"/Modular Inverse":(context) => Code49Screen(),
"/Palindromic Array":(context) => Code51Screen(),
"/Pancake Sort":(context) => Code52Screen(),
"/Pigeonhole Sort":(context) => Code53Screen(),
"/Postman Sort":(context) => Code54Screen(),
"/Prims Algorithm":(context) => Code66Screen(),
"/Quick Hull":(context) => Code56Screen(),
"/Quick Sort":(context) => Code57Screen(),
"/Radix Sort":(context) => Code58Screen(),
"/Segment Tree":(context) => Code59Screen(),
"/Selection Sort":(context) => Code60Screen(),
"/Shell Sort":(context) => Code61Screen(),
"/Sieve of Eratosthenes":(context) => Code62Screen(),
"/Ternary Search":(context) => Code63Screen(),
"/Topological Sort":(context) => Code64Screen(),
"/Vegas Algorithm":(context) => Code65Screen(),
      },
      title: 'E-Learning Online Courses App',
      debugShowCheckedModeBanner: false,
      theme: Constants.lighTheme(context),
      home: HomeScreen(),
    );
  }
}

class Code37Sreen {
}