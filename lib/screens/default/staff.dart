import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safeoutsbusinessios/profile/SettingsPage.dart';



class Staff extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        title: Text(''),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Divider(
                  height: 10,
                  thickness:10),
              ListTile(
                title: Text(
                  'Employees',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left:15.0,right: 15.0,top: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child:
                 new ListTile(
                    // leading: new Icon(Icons.search, color: Colors.grey, ),
                    title: new TextField(
                      // controller: controller,
                      decoration: new InputDecoration(
                          hintText: 'Search employee...', border: InputBorder.none,
                          // fontWeight: FontWeight.bold,
                          // color: Colors.black54,
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          // fontSize: 25,
                        ),
                      ),
                      // onChanged: onSearchTextChanged,
                    ),
                    trailing: new IconButton(icon: new Icon(Icons.search, color: Colors.grey,), onPressed: () {
                      // controller.clear();
                      // onSearchTextChanged('');
                    },
                    ),

                  ),

              ),

              Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Rahul SN',
                        style: TextStyle(
                          fontSize: 25,
                            fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,
                      maxLines: null,
                      onChanged: (String value) {
                        // food.Pcop = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '          Positive',
                        hintStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                        contentPadding: EdgeInsets.only(left: 130),
                      ),
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                    )

                    ),
                  ]
              ),
              Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left:21.0),
                      child: Text('Cashier',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,

                        ),
                      ),

                    ),

                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,
                      maxLines: null,
                      onChanged: (String value) {
                        // food.Pcop = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '                              97.9F',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        contentPadding: EdgeInsets.only(left: 130),
                      ),
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                    )
                    ),
                  ]
              ),


             Card(
                child: new ListTile(
                leading: new Icon(Icons.phone, color: Colors.black,),
                   title: Align(
                   child: new Text("+91-9998887771",
                     style: TextStyle(
                     color: Colors.teal,
                     fontSize: 15 ,
                     fontWeight: FontWeight.bold,
                     ),
                   ),
                   alignment: Alignment(-1.3, 0),
                        ),
                      ),
                   ),
              Card(
                child: new ListTile(
                  leading: new Icon(Icons.email, color: Colors.black,),
                  title: Align(
                    child: new Text("rahulsn1997@gmail.com",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment(-1.7, 0),
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Text("Edit",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.edit, color: Colors.teal,), // icon-1
                    ],
                  ),

                  // },
                  ),
                ),




              Card(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Rahul SN',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Expanded(
                        child: Text('      Cashier',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      97.9F',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      Negative',
                          // your TextField's Content
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Rahul SN',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Expanded(
                        child: Text('      Cashier',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      97.9F',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      Positive',
                          // your TextField's Content
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Rahul SN',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Expanded(
                        child: Text('      Cashier',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      97.9F',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      Negative',
                          // your TextField's Content
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Rahul SN',
                            style: TextStyle(
                              color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          )
                      ),
                      Expanded(
                        child: Text('      Cashier',
                          style: TextStyle(
                          color: Colors.black54,
                        ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      97.9F',
                          style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      Positive',
                          // your TextField's Content
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 Card(
                 child: ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('Rahul SN',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                    Expanded(
                      child: Text('      Cashier',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        // your TextField's Content
                      ),
                    ),
                    Expanded(
                      child: Text('      97.9F',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        // your TextField's Content
                      ),
                    ),
                    Expanded(
                      child: Text('      Negative',
                        // your TextField's Content
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                  ],
                ),
              ),
          ),
              Card(
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Rahul SN',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Expanded(
                        child: Text('      Cashier',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      97.9F',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          // your TextField's Content
                        ),
                      ),
                      Expanded(
                        child: Text('      Positive',
                          // your TextField's Content
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 390.0,
                height: 60.0,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Color(0x00fbbb)),
                  ),
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),

                  elevation: 0.0,


                  onPressed: () {  },
                  child: Text('                  Add staff                 ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),

                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
  }

Future _asyncInputDialog(BuildContext context) async {
  String teamName = '';
  return showDialog(
    context: context,
    barrierDismissible: false, // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Enter current team'),
        content: new Row(
          children: [
            new Expanded(
                child: new TextField(
                  autofocus: true,
                  decoration: new InputDecoration(
                      labelText: 'Team Name', hintText: 'eg. Juventus F.C.'),
                  onChanged: (value) {
                    teamName = value;
                  },
                )
            )
          ],
        ),
        actions: [
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop(teamName);
            },
          ),
        ],
      );
    },
  );
}

