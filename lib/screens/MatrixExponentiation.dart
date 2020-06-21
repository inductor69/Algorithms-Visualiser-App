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


class Code46Screen extends StatefulWidget {
  @override
  _Code46ScreenState createState() => _Code46ScreenState();
}

class _Code46ScreenState extends State<Code46Screen> {
var code5 = '''
/*
Matrix Exponentiation. If the problem can be solved with DP but constaints are high.
ai = bi (for i <= k)
ai = c1*ai-1 + c2*ai-2 + ... + ck*ai-k (for i > k)
Taking the example of Fibonacci series, K=2
b1 = 0, b2=1
c1 = 1, c2=1
a = 0 1 1 2 ....
This way you can find the 10^18 fibonacci number%MOD.
I have given a general way to use it. The program takes the input of B and C matrix.
Steps for Matrix Expo 
1. Create vector F1 : which is the copy of B.
2. Create transpose matrix (Learn more abput it on the internet)
3. Perform T^(n-1) [transpose matrix to the power n-1]
4. Multiply with F to get the last matrix of size (1xk). The first element of this matrix is the required result.
*/


#include<bits/stdc++.h>
using namespace std;
 
#define ll long long
#define ull unsigned long long
#define endl '\n'
#define pb push_back
#define mp make_pair
#define MOD 1000000007
ll k;
vector<ll> a,b,c;

//To multiply 2 matrix
vector<vector<ll> > multiply(vector<vector<ll> > A, vector<vector<ll> > B)
{
	vector<vector<ll> > C(k+1,vector<ll>(k+1));
	for(int i=1; i<=k; i++){
		for(int j=1; j<=k; j++){
			for(int z=1; z<=k; z++){
				C[i][j] = (C[i][j]+ (A[i][z]*B[z][j])%MOD)%MOD;
			}
		}
	}
	return C;
}

//computing power of a matrix
vector<vector<ll> > power(vector<vector<ll> > A, ll p)
{
	if(p==1)
		return A;
	if(p%2==1)
		return multiply(A,power(A,p-1));
	else{
		vector<vector<ll> > X = power(A,p/2);
		return multiply(X,X);
	}

}

//main function
ll ans(ll n)
{
	if(n==0)
		return 0;
	if(n<=k)
		return b[n-1];
	//F1
	vector<ll> F1(k+1);
	for(int i=1; i<=k; i++)
		F1[i]=b[i-1];

	//Transpose matrix
	vector<vector<ll> > T(k+1,vector<ll>(k+1));
	for(int i=1; i<=k; i++){
		for(int j=1; j<=k; j++){
			if(i<k){
				if(j==i+1)
					T[i][j]=1;
				else
					T[i][j]=0;
				continue;
			}
			T[i][j]=c[k-j];
		}
	}
	//T^n-1
	T=power(T,n-1);

	// T*F1
	ll res=0;
	for(int i=1; i<=k; i++)
	{
		res= (res + (T[1][i]*F1[i])%MOD)%MOD;
	}
	return res;
}




int main()
{
	ios::sync_with_stdio(0);
	cin.tie(0); cout.tie(0);
	int t;
	cin>>t;
	ll i,j,x;
	while(t--)
	{
		cin>>k;
		for(i=0; i<k; i++)
		{
			cin>>x;
			b.pb(x);
		}
		for(i=0; i<k; i++)
		{
			cin>>x;
			c.pb(x);
		}
		cin>>x;
		cout<<ans(x)<<endl;
		b.clear();
		c.clear();
	}
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