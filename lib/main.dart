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
import 'package:elearning/screens/binary.dart';
import 'package:elearning/screens/bubblesort.dart';
import 'package:elearning/screens/cocksort.dart';
import 'package:elearning/screens/coin_change.dart';
import 'package:elearning/screens/comb_sort.dart';
import 'package:elearning/screens/heapsort.dart';
import 'package:elearning/screens/home_screen.dart';
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
"/Breadth First Search": (context) => Code6Screen(),
"/Bubble Sort":(context) => Code7Screen(),
"/Cocktail Sort":(context) => Code8Screen(),
"/Coin Change":(context) => Code9Screen(),
"/Centered Square Number":(context) => Code10Screen(),
"/Circular Linked List":(context) => Code11Screen(),
"/Chinese Remainder Theorem":(context) => Code12Screen(),
"/Comb Sort":(context) => Code13Screen(),
"/Cyclic Permutation":(context) => Code14Screen(),
"/Dearrangements (DP)":(context) => Code15Screen(),
"/Decision Tree":(context) => Code16Screen(),
"/Dijkstra Algorithm":(context) => Code17Screen(),
"/Disjoint Sets":(context) => Code18Screen(),
"/Doubly Linked List":(context) => Code19Screen(),
"/Euclidean Algorithm":(context) => Code20Screen(),
"/Exponential Search":(context) => Code21Screen(),
"/Extended Euclidean Algorithm":(context) => Code22Screen(),
"/Factorial":(context) => Code23Screen(),
"/Fenwick Tree":(context) => Code24Screen(),
"/Fermat Little Theorem.":(context) => Code25Screen(),
"/Fibonacci Number (DP)":(context) => Code26Screen(),
"/Floyd Warshall Algorithm":(context) => Code27Screen(),
"/Ford Fulkerson Method":(context) => Code28Screen(),
"/Geometric Progression":(context) => Code29Screen(),
"/Gnome Sort":(context) => Code30Screen(),
"/Graph":(context) => Code31Screen(),
"/Hamiltonian Cycle":(context) => Code32Screen(),
"/Heap Sort":(context) => Code33Screen(),
"/Heavy Light Decomposition.":(context) => Code34Screen(),
"/Insertion Sort":(context) => Code35Screen(),
"/Intro Sort":(context) => Code36Screen(),
"/Johnson Algorithm":(context) => Code37Screen(),
"/Kadane Algorithm":(context) => Code38Screen(),
 "/Knapsack Algorithm":(context) => Code39Screen(),
"/Knuth Morris Pratt Algorithm":(context) => Code40Screen(),
"/Kruskal Algorithm":(context) => Code41Screen(),
"/Linear Search":(context) => Code42Screen(),
"/Longest Path":(context) => Code43Screen(),
"/Logarithmic Exponent":(context) => Code44Screen(),
"/Lucas Theorem":(context) => Code45Screen(),
"/Manacher Algorithm":(context) => Code46Screen(),
"/Matrix Exponentiation":(context) => Code47Screen(),
"/Merge Sort":(context) => Code48Screen(),
"/Mo's Algorithm":(context) => Code49Screen(),
"/Modular Exponentiation":(context) => Code50Screen(),
"/Modular Inverse":(context) => Code51Screen(),
"/Palindromic Array":(context) => Code52Screen(),
"/Pancake Sort":(context) => Code53Screen(),
"/Pigeonhole Sort":(context) => Code54Screen(),
"/Postman Sort":(context) => Code55Screen(),
"/Prims Algorithm":(context) => Code56Screen(),
"/Quick Hull":(context) => Code57Screen(),
"/Quick Sort":(context) => Code58Screen(),
"/Radix Sort":(context) => Code59Screen(),
"/Segment Tree":(context) => Code60Screen(),
"/Selection Sort":(context) => Code61Screen(),
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