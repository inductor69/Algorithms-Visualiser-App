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


class Code18Screen extends StatefulWidget {
  @override
  _Code18ScreenState createState() => _Code18ScreenState();
}

class _Code18ScreenState extends State<Code18Screen> {
var code5 = '''
#include<iostream>
using namespace std;
class node{
private:
    int data;
    node *next;
    node *prev;
public:
    node(int d)
    {
        data=d;
        next=NULL;
        prev=NULL;
    }
 friend class Linked_List;
};
class Linked_List
{
private:
    node *head;
public:
    Linked_List()
    {
        head=NULL;
    }
void insertatbeg(int d)
    {
        node *n=new node(d);
        n->next=head;
        n->prev=NULL;
        head=n;

    }
void insertatend(int d)
{
    node *t=head;
    node *n=new node(d);
    while(t->next!=NULL)
    {
        t=t->next;
    }
    t->next=n;
    n->prev=t;

}
void insertatK(int d,int k)
{
    node *n=new node(d);
    node *t=head;
    node *temp=NULL;
    int cnt=1;
    while(head==NULL ||  k==1)
    {
        insertatbeg(d);
        return;
    }
    while(t->next!=NULL &&  cnt<k)
    {
        temp=t;
        t=t->next;
        cnt++;
    }
    n->prev=temp;
    n->next=temp->next;
    temp->next=n;
    t->prev=n;
}
    void print()
    {
        node *t=head;
        while(t!=NULL)
        {
            cout<<t->data<<" ->";
            t=t->next;

        }
        cout<<endl;

    }
    void delatbeg()
{
    if(head==NULL)
    {
        cout<<"no nodes left"<<endl;
        return;
    }
    node*t=head;
    head=t->next;
    head->prev=NULL;
    t->next=NULL;
    delete t;
}
void delatend()
{
    node *t=head;
    while(t->next!=NULL)
    {
        t=t->next;
    }
    t->prev->next=NULL;
    delete t;
}
void delatK(int k)
{
    int cnt=1;
    node *t=head;
    node*temp=NULL;
    node *temp2=NULL;
    while(t->next!=NULL && cnt<k-1)
    {
        t=t->next;
        cnt++;
    }
    temp=t->next;
    t->next=temp->next;
    temp->next->prev=t;
    temp->next=NULL;
    delete temp;


}

};
int main()
{
    Linked_List ll;
    int d,c;
    char choice;
    ll.insertatbeg(1);
    ll.insertatbeg(2);
    ll.print();
    ll.insertatend(3);
    ll.print();
    ll.insertatK(4,3);
    ll.print();
    //ll.delatbeg();
    //ll.print();
    //ll.delatend();
    //ll.print();
    ll.delatK(2);
    ll.print();
   // ll.delatK(3);
    //ll.print();
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