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


class Code59Screen extends StatefulWidget {
  @override
  _Code59ScreenState createState() => _Code59ScreenState();
}

class _Code59ScreenState extends State<Code59Screen> {
var code5 = '''
#include<bits/stdc++.h>

using namespace std;

int getMid(int a,int b){
	return (a+b)/2;
}

int getSum(int *st,int ss,int se,int qs,int qe,int si){
	if(qs<=ss && qe>=se)
		return st[si];
	if(qs>se || qe<ss)
		return 0;
	int mid = getMid(ss,se);
	return getSum(st,ss,mid,qs,qe,2*si+1)+getSum(st,mid+1,se,qs,qe,2*si+2);
}

void updateValueUtil(int *st,int ss,int se,int ind,int diff,int si){
	if(ind>se || ind<ss)
		return ;
	st[si]=st[si]+diff;
	if(se!=ss){
		int mid=getMid(ss,se);
		updateValueUtil(st,ss,mid,ind,diff,2*si+1);
		updateValueUtil(st,mid+1,se,ind,diff,2*si+2);
	}
}

void updateValue(int arr[],int *st,int n,int ind,int num){
	int diff = num-arr[ind];
	arr[ind]=num;
	updateValueUtil(st,0,n-1,ind,diff,0);
}

int constructUtil(int arr[],int ss,int se,int *st,int si){
	if(ss==se){
		st[si]=arr[ss];
		return arr[ss];
	}
	int mid = getMid(ss,se);
	st[si]=constructUtil(arr,ss,mid,st,2*si+1)+constructUtil(arr,mid+1,se,st,2*si+2);
	return st[si];
}

int *construct(int arr[],int n){
	int x = (int)ceil(log2(n));
	int max_size = 2*int(pow(2,x))-1;
	int *st=new int [max_size];
	constructUtil(arr,0,n-1,st,0);
	/*for(int i=0;i<max_size;i++)
		cout<<st[i]<<" ";
	cout<<endl;*/
	return st;
}

int main()
{
	freopen("in.txt","r",stdin);
	int n;
	cin>>n;
	int a[n];
	for(int i=0;i<n;i++)
		cin>>a[i];
	int *st = construct(a,n);
	cout<<getSum(st,0,n-1,2,4,0)<<endl;
	updateValue(a,st,n,2,10);
	cout<<getSum(st,0,n-1,1,3,0)<<endl;
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