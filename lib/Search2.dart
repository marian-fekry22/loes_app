import 'package:flutter/material.dart';

main() => runApp(
  MaterialApp(
//          home: Scaffold(
//        body: Container(child: SearchButton()),
      home: Body()),
);

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController controller;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 16,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.search),
          title: TextField(
            controller: controller,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
            Tab(icon: Icon(Icons.location_city)),
          ]),
        ),
        body: TabBarView(children: [Container(), Container() , Container(), Container() , Container(), Container() , Container(), Container()
        ,Container(), Container() , Container(), Container() , Container(), Container() , Container(), Container()
        ]),
      ),
    );
  }
}