import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loes_app/CalendarTab.dart';
import 'package:loes_app/DiscoverTab.dart';
//import 'package:loes_app/Edit/DiscoverHome.dart';
import 'package:loes_app/Widget/BottomMenu.dart';
import '../Discover.dart';
import '../Search.dart';
import '../WishList.dart';
import '../UserProfile.dart';
//import 'package:connectivity/connectivity.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool _isVisible = true;
  ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
//    controller.addListener(() {
//      setState(() {
//        _isVisible = controller.position.userScrollDirection == ScrollDirection.forward;
//      });
//    });
//    check_internet();
  }

  @override
  void dispose() {
//    _connectivitySubscription.cancel();
    super.dispose();
  }


//  check_internet()async{
//  var connectivityResult = await (Connectivity().checkConnectivity());
//  if (connectivityResult == ConnectivityResult.wifi) {
//    print('wifi internet ????????????????????????????????????????????????????????????????????????????????????????????????');
//  }
////  else if (connectivityResult == ConnectivityResult.wifi) {
////    // I am connected to a wifi network.
////  }
//  else    print(' internet ????????????????????????????????????????????????????????????????????????????????????????????????');
//
//  }


  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;



    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print(_selectedIndex);
        switch(_selectedIndex){
          case 0:
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => Home()
                )
            );
            break;
          case 1:
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => SearchPage()
                )
            );
            break;
          case 2:
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => WishListPage()
                )
            );
            break;
          default:  Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage()
              )
          );
        }
      });
    }


    return  Scaffold(
      bottomNavigationBar: BottomMenu(),

      body: DefaultTabController(
          length: 2,
          child:  Scaffold(
//          bottomNavigationBar :BottomMenu(),


//          bottomNavigationBar: BottomNavigationBar(
//          //  type: BottomNavigationBarType.fixed,
//            backgroundColor: Colors.black,
//            type: BottomNavigationBarType.fixed,
//
//            items: [
//              new BottomNavigationBarItem(icon: new Icon(Icons.home , color: Colors.white,),
//                  title: new Text("home".toUpperCase() ,style: TextStyle(color : Colors.white ,
//                      fontSize: 10))),
//              new BottomNavigationBarItem(icon: new Icon(Icons.search , color: Colors.white,),
//                  title: new Text("search".toUpperCase() , style: TextStyle(color : Colors.white ,
//                      fontSize: 10))),
//              new BottomNavigationBarItem(icon: new Icon(Icons.accessibility ,
//                color: Colors.white,), title: new Text("wishlist".toUpperCase(),
//                  style: TextStyle(color : Colors.white , fontSize: 10))),
//              new BottomNavigationBarItem(icon: new Icon(Icons.person , color: Colors.white,), title: new Text("profile".toUpperCase() , style: TextStyle(color : Colors.white , fontSize: 10)))
//          ],
//            currentIndex: _selectedIndex,
//            selectedItemColor: Colors.amber[800],
////            onTap: _onItemTapped,
//          ),

            appBar:  AppBar(
              backgroundColor: Colors.white,centerTitle: false,
//            title: new Text("Title"),

              title:  TabBar(
                  isScrollable: true,
                  labelColor: Colors.grey,
//                physics: NeverScrollableScrollPhysics(),
//indicatorPadding: EdgeInsets.all(5),
//                indicatorWeight: 3,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
//                  labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  unselectedLabelStyle:TextStyle(color: Colors.black12,fontSize: 15) ,
//                labelStyle: TextStyle(fontSize: 20) ,

//                labelStyle: TextStyle(fontSize: 20) ,
                  tabs:[

                    Container(
                      width: MediaQuery.of(context).size.width*.3,

                      height: 50,
                      alignment: Alignment.centerLeft,
                      child:  Tab(child: Text('Discover',
//                      style: TextStyle(color: Colors.black),
                      ),),),

                    Container(
                      width: MediaQuery.of(context).size.width*.3,
                      height: 50,
                      alignment: Alignment.center,
                      child:  Tab(child: Text('Calendar',
//                      style: TextStyle(color: Colors.black),
                        ),),
                    ),

              //      Tab(child: Text('Discover'),),
//                  Tab(child: Text('Calendar'),),


                  ]),

            ),


          body: Container(
            child: TabBarView(
//              physics: NeverScrollableScrollPhysics(),
              children: [

                DiscoverPage(),
//
//                Container(child: Text('gggggggggggg'),),
//              DiscoverHome(),
                CalendarTab(),

              ],
            ),
          ),

      )),
    );
  }



  _onTap(index) {

//    switch(_currentIndex)

    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      if(index==0){

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (BuildContext context) => Home()
            )
        );

        return null;
//          return Home();
      }
      else if(index==1){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (BuildContext context) => SearchPage()
            )
        );
        return  null;
//        return  SearchPage();

      }
      else if(index==2){
        MaterialPageRoute(
            builder: (BuildContext context) => WishListPage()
        )
        ;

        return null;

        // return new WishListPage();
      }
      else
      {
        return new ProfilePage();
      }

    }));
  }




}