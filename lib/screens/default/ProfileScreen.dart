import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safeoutsbusinessios/profile/SettingsPage.dart';



class Profile extends StatelessWidget {


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
      body: Container(

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
          child: SingleChildScrollView(

            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(
                    height: 10,
                    thickness:10),
            SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    // controller: nameController,
                    decoration: InputDecoration(hintText: "Restaurant's name", border: InputBorder.none,

                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 25,
                      ),
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                      // onChanged: (value) {
                      //   productProvider.changeName(value);
                      // },
                    style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),

                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    // controller: addressController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    // onChanged: (value) => productProvider.changeAddress(value),

                    decoration: InputDecoration(
                      hintText: "Restaurant's address",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                    style: TextStyle(color: Colors.black54),

                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // controller: phoneController,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    // productProvider.changePhone(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    hintText: 'Add phone no.',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold
                    ),
                  ),
                  style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                ),

                Container(
                    padding: EdgeInsets.only(right:140.0, left: 10),
                    child:
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:10.0),
                        child: Text('Capacity no.pre-covid',
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,   fontSize: 17,
                          ),
                        ),
                      ),

                      Expanded
                        (child:
                      TextField(
                        // controller: copController,
                        keyboardType: TextInputType.number,
                        maxLines: null,
                          onChanged: (value) {
                            // productProvider.changeCop(value);
                          },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add values',
                          hintStyle: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold
                          ),
                          contentPadding: EdgeInsets.only(left: 10, bottom: 30),
                        ),
                        style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),

                      )
                      ),
                    ]),

                ),
                Container(
                  padding: EdgeInsets.only(right:140.0, left: 10),
                  child:
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left:10.0),
                          child: Text('Capacity no.after-covid',
                            style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,   fontSize: 17,
                            ),
                          ),
                        ),

                        Expanded
                          (child:
                        TextField(
                          // controller: copController,
                          keyboardType: TextInputType.number,
                          maxLines: null,
                          onChanged: (value) {
                            // productProvider.changeCop(value);
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add values',
                            hintStyle: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10, bottom: 30),
                          ),
                          style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),

                        )
                        ),
                      ]),

                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  width: 390.0,
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: Color(0x00fbbb)),
                    ),
                    color: Colors.teal.withOpacity(0.7),
                    elevation: 0,
                    onPressed: () async {
                      // final form = _formkey.currentState;
                      // if (form.validate())
                      {
                        // storeUser();
                        // print('Person :${user.toString()}');
                        // await _addPerson(user);
                        moveTonextScreen();
                      }
                    },
                    // onPressed: () {  },
                    child: Text('Save',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),

          ),
        ),
      ),

    );

  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  moveTonextScreen() {
    // Timer(
    //     Duration(seconds: 2),
    //         () => {
    //       Navigator.of(context).pushReplacement(
    //           MaterialPageRoute(builder: (context) => SettingsPage()))
    //     });
  }

}
class TextEditorForPhoneVerify extends StatelessWidget {
  final TextEditingController code;

  TextEditorForPhoneVerify(this.code);

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: this.code,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            hintText: "*",
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)
        )
    );
  }
}