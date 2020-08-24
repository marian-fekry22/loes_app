import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Discover3.dart';
class ShippingAddressPage extends StatefulWidget {
  ShippingAddressPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ShippingAddressPageState createState() => _ShippingAddressPageState();
}


class _ShippingAddressPageState extends State<ShippingAddressPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final streetController = TextEditingController();
  final cityController = TextEditingController();
  final building_noController = TextEditingController();

  Map<String, String> address;

  final _formKey = GlobalKey<FormState>();
  var message ='';
  Future<void> nextQuestion() async {
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverPage()),);
      }
      message = res['message']['message'];
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
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
                      controller: cityController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter city';
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
                          labelText: 'city',
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Street';
                        }
                        return null;
                      },
                      controller: streetController,
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
                          labelText: 'Street',
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
                      controller: building_noController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter building NO';
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
                          labelText: 'building_no',
                          labelStyle: TextStyle(
                            color: const Color(0xffccc7c7),fontSize: 15.0,
                            fontFamily: 'Cairo',
                          )
                      ))),
            ),

//            Padding(
//              padding: const EdgeInsets.only(top: 10.0),
//              child: Container(
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: new BorderRadius.circular(3.0),
//                  ),
//                  child: TextFormField(
//                      controller: emailController,
//                      decoration: InputDecoration(
//                          contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
//                          focusedBorder: OutlineInputBorder(
//                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                              borderSide: BorderSide(color: Colors.black)),
//                          enabledBorder: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                            borderSide: BorderSide(color: const Color(0xffccc7c7)),
//                          ),
//                          filled: true,
//                          fillColor: Colors.white,
//                          labelText: 'Full Name',
//                          labelStyle: TextStyle(
//                            color: const Color(0xffccc7c7),fontSize: 15.0,
//                            fontFamily: 'Cairo',
//                          )
//                      ))),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 10.0),
//              child: Container(
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: new BorderRadius.circular(3.0),
//                  ),
//                  child: TextFormField(
//                      controller: passwordController,
//                      validator: (value) {
//                        if (value.isEmpty) {
//                          return 'Please enter Address';
//                        }
//                        return null;
//                      },
//                      decoration: InputDecoration(
//                          contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
//                          focusedBorder: OutlineInputBorder(
//                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                              borderSide: BorderSide(color: Colors.black)),
//                          enabledBorder: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                            borderSide: BorderSide(color: const Color(0xffccc7c7)),
//                          ),
//                          filled: true,
//                          fillColor: Colors.white,
//                          labelText: 'Shipping Address',
//                          labelStyle: TextStyle(
//                            color: const Color(0xffccc7c7),fontSize: 15.0,
//                            fontFamily: 'Cairo',
//                          )
//                      ))),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 10.0),
//              child: Container(
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: new BorderRadius.circular(3.0),
//                  ),
//                  child: TextFormField(
//                      controller: passwordController,
//                      validator: (value) {
//                        if (value.isEmpty) {
//                          return 'Please enter City';
//                        }
//                        return null;
//                      },
//                      decoration: InputDecoration(
//                          contentPadding: const EdgeInsets.symmetric(horizontal: 5.0 , vertical: 2.0),
//                          focusedBorder: OutlineInputBorder(
//                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                              borderSide: BorderSide(color: Colors.black)),
//                          enabledBorder: OutlineInputBorder(
//                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                            borderSide: BorderSide(color: const Color(0xffccc7c7)),
//                          ),
//                          filled: true,
//                          fillColor: Colors.white,
//                          labelText: 'City',
//                          labelStyle: TextStyle(
//                            color: const Color(0xffccc7c7),fontSize: 15.0,
//                            fontFamily: 'Cairo',
//                          )
//                      ))),
//            ),


          ],
        ));

  }

  Widget _header() {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text('Shipping Address' , style: TextStyle(fontSize: 20, fontFamily: 'Cairo' , color: const Color(0xff000000))),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
//           Navigator.pop(context,'adress data');
            if (_formKey.currentState.validate()) {
              address={
                'street':streetController.text,
                'city':cityController.text,
                'building_no':building_noController.text,
              };
              Navigator.pop(context,address);
            }
          },
          child: Text(
            "SAVE",
          ),
        )
      ],
    leading: IconButton(
    tooltip: '',
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
      key: _formKey,

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