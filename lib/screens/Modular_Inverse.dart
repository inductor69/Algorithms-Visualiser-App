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


class Code49Screen extends StatefulWidget {
  @override
  _Code49ScreenState createState() => _Code49ScreenState();
}

class _Code49ScreenState extends State<Code49Screen> {
var code5 = '''
/*
    Modular Inverse
    The task is to find the mod inverse of a number x, under the modulo of a given prime number.
    Modular inverse of a number x under modulo m, is defined as a number a(0<a<m), where 
    (a*x)%m = 1.
    When m is a prime number, according to Fermat's Little Theorem, (a^(m-1))%m = 1.
    On multiplying with a^(m-2) on both sides, (a^(-1))%m = (a^(m-2)).
*/
#include <bits/stdc++.h>
using namespace std;
#define lint long long int

lint modex(lint base, lint exponent, lint mod) {
    if (base == 0) {              // As, 0^x = 0, return 0;
        return 0;
    }
    if (exponent == 0) {          // As, x^0 = 1, return 1.
        return 1;
    }
    if (exponent % 2 == 0) {
        lint result = modex(base, exponent / 2, mod);   // We use the concept of (a^x)=((a^(x/2))*(a^(x/2)) when x is even, to reduce computation time effectively.
        return (result * result) % mod;
    }
    return ((base % mod) * modex(base, exponent - 1, mod)) % mod;      // In case of Odd exponent, we just decrement it by 1, so that it becomes even.
}

lint modInverse(lint base, lint mod){
    if (__gcd(base, mod) != 1) {         // When gcd of the number and mod is not 1, The modular inverse doesn't exist.
        return -1;
    }
    return modex(base, mod - 2, mod);   // modular inverse of base under mod = base^(mod-2)%mod.
}

int main()
{
    lint base;
    lint mod;
    cin >> base;
    cin >> mod;
    lint ans = modInverse(base,mod);
    if (ans == -1) {
        cout << "Modular Inverse of " << base << " under " << mod << " does not exist";
    }
    else {
        cout << "Modular Inverse of " << base << " under " << mod << " is " << ans;
    }
}     
/*
Input :  base = 10, mod = 7.
Output: Modular Inverse of 10 under 7 is 5
Verification : (modinverse * base)%mod = 1.
               (5*10)%7 = 50%7 = 1.
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