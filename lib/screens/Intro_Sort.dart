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


class Code35Screen extends StatefulWidget {
  @override
  _Code35ScreenState createState() => _Code35ScreenState();
}

class _Code35ScreenState extends State<Code35Screen> {
var code5 = '''
/* A Program to sort the array using Introsort. 
  The most popular C++ STL Algorithm- sort() 
  uses Introsort. */
  
#include<bits/stdc++.h> 
using namespace std; 
  
// A utility function to swap the values pointed by 
// the two pointers 
void swapValue(int *a, int *b) 
{ 
    int *temp = a; 
    a = b; 
    b = temp; 
    return; 
} 
  
/* Function to sort an array using insertion sort*/
void InsertionSort(int arr[], int *begin, int *end) 
{ 
    // Get the left and the right index of the subarray 
    // to be sorted 
    int left = begin - arr; 
    int right = end - arr; 
  
    for (int i = left+1; i <= right; i++) 
    { 
        int key = arr[i]; 
        int j = i-1; 
  
       /* Move elements of arr[0..i-1], that are 
          greater than key, to one position ahead 
          of their current position */
        while (j >= left && arr[j] > key) 
        { 
            arr[j+1] = arr[j]; 
            j = j-1; 
        } 
        arr[j+1] = key; 
   } 
  
   return; 
} 
  
// A function to partition the array and return 
// the partition point 
int* Partition(int arr[], int low, int high) 
{ 
    int pivot = arr[high];    // pivot 
    int i = (low - 1);  // Index of smaller element 
  
    for (int j = low; j <= high- 1; j++) 
    { 
        // If current element is smaller than or 
        // equal to pivot 
        if (arr[j] <= pivot) 
        { 
            // increment index of smaller element 
            i++; 
  
            swap(arr[i], arr[j]); 
        } 
    } 
    swap(arr[i + 1], arr[high]); 
    return (arr + i + 1); 
} 
  
  
// A function that find the middle of the 
// values pointed by the pointers a, b, c 
// and return that pointer 
int *MedianOfThree(int * a, int * b, int * c) 
{ 
    if (*a < *b && *b < *c) 
        return (b); 
  
    if (*a < *c && *c <= *b) 
        return (c); 
  
    if (*b <= *a && *a < *c) 
        return (a); 
  
    if (*b < *c && *c <= *a) 
        return (c); 
  
    if (*c <= *a && *a < *b) 
        return (a); 
  
    if (*c <= *b && *b <= *a) 
        return (b); 
} 
  
// A Utility function to perform intro sort 
void IntrosortUtil(int arr[], int * begin, 
                  int * end, int depthLimit) 
{ 
    // Count the number of elements 
    int size = end - begin; 
  
      // If partition size is low then do insertion sort 
    if (size < 16) 
    { 
        InsertionSort(arr, begin, end); 
        return; 
    } 
  
    // If the depth is zero use heapsort 
    if (depthLimit == 0) 
    { 
        make_heap(begin, end+1); 
        sort_heap(begin, end+1); 
        return; 
    } 
  
    // Else use a median-of-three concept to 
    // find a good pivot 
    int * pivot = MedianOfThree(begin, begin+size/2, end); 
  
    // Swap the values pointed by the two pointers 
    swapValue(pivot, end); 
  
   // Perform Quick Sort 
    int * partitionPoint = Partition(arr, begin-arr, end-arr); 
    IntrosortUtil(arr, begin, partitionPoint-1, depthLimit - 1); 
    IntrosortUtil(arr, partitionPoint + 1, end, depthLimit - 1); 
  
    return; 
} 
  
/* Implementation of introsort*/
void Introsort(int arr[], int *begin, int *end) 
{ 
    int depthLimit = 2 * log(end-begin); 
  
    // Perform a recursive Introsort 
    IntrosortUtil(arr, begin, end, depthLimit); 
  
      return; 
} 
  
// A utility function ot print an array of size n 
void printArray(int arr[], int n) 
{ 
   for (int i=0; i < n; i++) 
       printf("%d ", arr[i]); 
   printf(" "); 
} 
  
// Driver program to test Introsort 
int main() 
{ 
    int arr[] = {3, 1, 23, -9, 233, 23, -313, 32, -9}; 
    int n = sizeof(arr) / sizeof(arr[0]); 
  
    // Pass the array, the pointer to the first element and 
    // the pointer to the last element 
    Introsort(arr, arr, arr+n-1); 
    printArray(arr, n); 
  
    return(0); 
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