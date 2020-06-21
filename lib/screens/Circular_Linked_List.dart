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


class Code10Screen extends StatefulWidget {
  @override
  _Code10ScreenState createState() => _Code10ScreenState();
}

class _Code10ScreenState extends State<Code10Screen> {
var code5 = '''
#include <iostream>

using namespace std;

struct node
{
	int data;
	node *next;
};

node *last;

/**** Create Circular Link List ****/
void create_node(int value)
{
    node *temp;
    temp = new node;
    temp->data = value;
    if (last == NULL)
    {
        last = temp;
        temp->next = last;   
    }
    else
    {
        temp->next = last->next; 
        last->next = temp;
        last = temp;
    }
}

/**** Insertion of element at a particular place ****/
void Insertion(int value, int pos)
{
    if (last == NULL)
        return;
 
    node *temp, *s;
    s = last->next;
    for (int i = 1; i < pos; i++)
    {
        s = s->next;
        if (s == last->next)
            return;
    }
    temp = new node;
    temp->next = s->next;
    temp->data = value;
    s->next = temp;
    
    if (s == last)    // Element inserted at the end
    { 
        last = temp;
    }
}


/**** Deletion of element from the list ****/
void Deletion(int value)
{
    struct node *temp, *s;
    s = last->next;
      
    if (last->next == last && last->data == value)          // One element is there 
    {
        temp = last;
        last = NULL;
        delete temp;
        return;
    }
    if (s->data == value)                           // First Element Deletion
    {
        temp = s;
        last->next = s->next;
        delete temp;
        return;
    }
    while (s->next != last)
    {
        if (s->next->data == value)              // Deletion in between of list 
        {
            temp = s->next;
            s->next = temp->next;
            delete temp;
            return;
        }
        s = s->next;
    }
    
    if (s->next->data == value)                 // Deletion of last element  
    {
        temp = s->next;
        s->next = last->next;
        delete temp;
        last = s;
        return;
    }
    cout << "Not found in the list" << endl;
}
 
 
/**** Search element in the list ****/
void Search(int value)
{
    node *s;
    int position = 0;
    s = last->next;
    while (s != last)
    {
        position++;
        if (s->data == value)    
        {
        	cout << "Found at :" << position << endl;
            return;
        }
        s = s->next;
    }
    if (s->data == value)    
    {
        position++;
		cout << "Found at :" << position << endl;             
        return;
    }
    cout << "Not found in the list" << endl;
}
 
/**** Print Circular Link List ****/
void Print()
{
    node *s;
    if (last == NULL)
      return;       // Empty list

    s = last->next;
    
    while (s != last)
    {
        cout<<s->data<<" -> ";
        s = s->next;
    }
    cout << s->data << endl;
}

int main()
{
	create_node(5);
	Print();     // 5
 	
	create_node(3);
	Print();     // 5 -> 3
    
	create_node(9);
	Print();     // 5 -> 3 -> 9
    
	Insertion(1, 2);
	Print();     // 5 -> 3 -> 1 -> 9
    
	Search(1);                    // Found at 3                    
	
	Search(4);                    // Not found in the list
	
	Deletion(1);
	Print();     // 5 -> 3 -> 9

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