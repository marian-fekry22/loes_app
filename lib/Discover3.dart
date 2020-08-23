import 'package:flutter/material.dart';
import 'Search.dart';
import 'DiscoverTab.dart';
import 'CalendarTab.dart';
import 'Widget/BottomMenu.dart';
//void main() {
//  runApp(DiscoverPage());
//}

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('Home' , style: TextStyle(fontSize: 20, fontFamily: 'Cairo' , color: Colors.black  )),
            bottom: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text:'Discover'),
                Tab(text: 'Calendar'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DiscoverTab(),
              CalendarTab(),
            ],
          ),
        ),
      ),
    );
  }
}