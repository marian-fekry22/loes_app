import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loes_app/CalendarTab.dart';
import 'package:loes_app/DiscoverTab.dart';
import 'package:loes_app/Widget/BottomMenu.dart';
import '../Discover.dart';
import '../Search.dart';
import '../WishList.dart';
import '../UserProfile.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


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

    return  DefaultTabController(
        length: 2,
        child:  Scaffold(
          bottomNavigationBar :BottomMenu(),


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
            backgroundColor: Colors.white,
//            title: new Text("Title"),

            title:  TabBar(
                isScrollable: true,
                labelColor: Colors.grey,
//                physics: NeverScrollableScrollPhysics(),
//indicatorPadding: EdgeInsets.all(5),
//                indicatorWeight: 3,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.symmetric(horizontal: 20.0),

                unselectedLabelStyle:TextStyle(color: Colors.black12,fontSize: 15) ,
//                labelStyle: TextStyle(fontSize: 20) ,
                tabs:[

                  Container(
                    width: MediaQuery.of(context).size.width*.3,
                    height: 50,
                    alignment: Alignment.center,
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
            physics: NeverScrollableScrollPhysics(),
            children: [
//            DiscoverTab(),
              DiscoverPage(),
              CalendarTab(),


            ],
          ),
        ),
    ));
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