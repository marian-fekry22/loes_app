import 'package:flutter/material.dart';
import 'package:loes_app/Edit/Home.dart';
import '../Discover.dart';
import '../Search.dart';
import '../WishList.dart';
import '../UserProfile.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key key}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
      int _currentIndex = 0;
      _onTap(index) {
        setState(() {
          _currentIndex=index;
        });
        Navigator.of(context)
            .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
          if(_currentIndex==0){
            return new Home();
//          return Home();
          }
          else if(_currentIndex==1){
            return new SearchPage();
          }
          else if(_currentIndex==2){
            return new WishListPage();
          }
          else
            {
              return new ProfilePage();
            }

        }));
      }
      return  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.home , color: Colors.white,),
              title: new Text("home".toUpperCase() ,style: TextStyle(color : Colors.white ,
                  fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.search , color: Colors.white,), title: new Text("search".toUpperCase() , style: TextStyle(color : Colors.white , fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.accessibility , color: Colors.white,), title: new Text("wishlist".toUpperCase(), style: TextStyle(color : Colors.white , fontSize: 10))),
          new BottomNavigationBarItem(icon: new Icon(Icons.person , color: Colors.white,), title: new Text("profile".toUpperCase() , style: TextStyle(color : Colors.white , fontSize: 10)))
        ],
//        onTap: _onTap,
      );
    }
}