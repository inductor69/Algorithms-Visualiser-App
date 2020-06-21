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

class Code37Screen extends StatefulWidget {
  @override
  _Code37ScreenState createState() => _Code37ScreenState();
}

class _Code37ScreenState extends State<Code37Screen> {
var code5 = '''
/* C++ implementation of Kadane's Algorithm to find the Maximum Subarray Sum
including the extra phase required when all the numbers in array are negative */

#include <iostream>

using namespace std;

int kadane(int input[], int n) // Function implementing Kadane's Algorithm (array contains at least one positive number)
{
    int current_max = 0, max_so_far = 0;

    for(int i = 0; i < n; i++)
    {
        current_max = max(0, current_max + input[i]);
        max_so_far = max(max_so_far, current_max);
    }

    return max_so_far; // Maximum subarray sum
}

int main()
{
    int max_subarray_sum;
    int input[] = {-2, 1, -6, 4, -1, 2, 1, -5, 4}; // Input array
    int n = sizeof(input) / sizeof(input[0]); // Size of array
    int flag = 0; // Flag variable to check if all the numbers in array are negative or not
    int largest_in_negative = input[0]; // Smallest_negative variable will store the maximum subarray sum if all the numbers are negative in array

    for(int i = 0; i < n; i++) // Scanning each element in array
    {
        if(input[i] >= 0) // If any element is positive, kadane's algo can be applied
        {
            flag = 1;
            break;
        }
        else if(input[i] > largest_in_negative) // If all the elements are negative, find the largest in them
            largest_in_negative = input[i];
    }

    if(flag == 1) // Kadane's algo applicable
        max_subarray_sum = kadane(input, n);
    else
        max_subarray_sum = largest_in_negative; // Kadane 's algo not applicable,
        // hence the max_subarray_sum will be the largest number in array itself

    cout << "Maximum Subarray Sum is " << max_subarray_sum << endl;

    return 0;
}


/* Output
Maximum Subarray Sum is 6
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