import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:loes_app/Edit/Home.dart';
import 'model/city.dart';
import 'dart:convert';
import 'Discover.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var message ='';

  Future<void> nextQuestion() async {
    final prefs = await SharedPreferences.getInstance();
    if (_formKey.currentState!=null&&!_formKey.currentState.validate()) {
      // If the form is valid, display a Snackbar.
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
    }
    var loginBody= {
      'email': emailController.text, 'password': passwordController.text
    };
    var response = await http.post('https://itloes.com/m/api/login' ,body:loginBody);
    print(response.statusCode);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
        final res = json.decode(response.body);
      if(res['message'] == 'success'){
        final ids = res['user_info'];
        final userId = ids.map<int>((m) => m['id'] as int).toList();
        final userName = ids.map<String>((m) => m['username'] as String).toList();
        final userEmail = ids.map<String>((m) => m['email'] as String).toList();
        prefs.setString('userId', userId.toString());
        prefs.setString('userEmail', userEmail.toString());
        prefs.setString('userName', userName.toString());

//        print(' id =$userId');
//        Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverPage()),);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
      }
      message = res['message']['message'];
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }



  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, size: 30 ,color: Colors.black),
            ),
            Text('Login',
                style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000)))
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 25.0, // soften the shadow
              spreadRadius: 7.0, //extend the shadow

            )
          ],
        ),
      ),
    );
  }


  Widget _submitButton() {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                )
              ],
            ),
            child: RaisedButton(
              onPressed: (){
                nextQuestion();
              },
              color: Colors.black,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )
        ]
    );
  }


  Widget _emailPasswordWidget() {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                  child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: const Color(0xffccc7c7)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: const Color(0xffccc7c7),fontSize: 15.0,
                            fontFamily: 'Cairo',
                          )
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                  child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: const Color(0xffccc7c7)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: const Color(0xffccc7c7),fontSize: 15.0,
                            fontFamily: 'Cairo',
                          )
                      ))),
            ),


          ],
        ));

  }

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text('Login' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
    leading: IconButton(
    tooltip: 'Previous choice',
    icon: const Icon(Icons.arrow_back),
    ),

    );
  }
  Widget _message(){
    if(message!='')
    { return Text('$message', style: TextStyle(fontSize: 20, color: Colors.red));}
    else {
      return Text('' , style: TextStyle(fontSize: 1));
    }

  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _header(),
                    _message(),
                    SizedBox(height: 10.0),
                    _emailPasswordWidget(),
                    SizedBox(height: 85.0),
                    _submitButton(),
                  ],
                ),
              ),
            ),
            //Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}