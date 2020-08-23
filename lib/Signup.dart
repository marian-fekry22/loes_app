import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Login.dart';
class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {
  final fristNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfrimController = TextEditingController();
  final RegExp emailRegex = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var message ='';
  Future<void> nextQuestion() async {
    if (_formKey.currentState!=null&&!_formKey.currentState.validate()) {
      // If the form is valid, display a Snackbar.
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
    }
    var singUpBody= {
      'fname': fristNameController.text , 'lname':lastNameController.text ,'phone': mobileController.text, 'email': emailController.text,'password': passwordController.text , 'confirm_password':passwordConfrimController.text
    };
    var response = await http.post('https://itloes.com/m/api/register' ,body:singUpBody);
    //print(response.statusCode);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final res = json.decode(response.body);
      message = res['message']['message'];
       }
    else if (response.statusCode == 201){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
    }
    else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      message= 'please try later';
    }
  }

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text('Create Account' , style: TextStyle(fontSize: 25, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      leading: IconButton(
        tooltip: 'Previous choice',
        icon: const Icon(Icons.arrow_back),
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
          'SIGN UP',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    )
    ]
    );
  }

  Widget _message(){
    if(message!='')
      { return Text('$message', style: TextStyle(fontSize: 20, color: Colors.red));}
    else {
        return Text('' , style: TextStyle(fontSize: 1, color: Colors.red));
      }

  }
  Widget _emailPasswordWidget() {
    return Form(
        key: _formKey,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(3.0),
                  ),
                      child: TextFormField(
                        controller: fristNameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter First Name';
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
                            labelText: 'First Name',
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
                  controller: lastNameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Last Name';
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
                      labelText: 'Last Name',
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
                  controller: mobileController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Mobile';
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
                      labelText: 'Mobile Number',
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
                controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter email';
                    }
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please enter valid email';
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
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(3.0),
              ),
              child: TextFormField(
                controller: passwordConfrimController,
                  validator: (value) {
                    if (value!=passwordController.text) {
                      return 'password Not Match';
                    }
                    return null;
                  },
                  obscureText: true,
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
                      labelText: 'Confirm password',
                      labelStyle: TextStyle(
                        color: const Color(0xffccc7c7),fontSize: 15.0,
                        fontFamily: 'Cairo',
                      )
                  ))),
        ),


      ],
    ));

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
                    SizedBox(height: 10.0),
                    _message(),
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