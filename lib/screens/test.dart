
import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  @override
  TestState createState() => TestState();
}

class TestState extends State<Test>
    with SingleTickerProviderStateMixin {
  double screenSize;
  double screenRatio;
  AppBar appBar;
  List<Tab> tabList = List();
  TabController _tabController;
  @override
  void initState() {
    tabList.add(new Tab(text:'Overview',));
    tabList.add(new Tab(text:'Workouts',));
    _tabController = new TabController(vsync: this, length:
    tabList.length);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          new Container(
            height: 300,
            width: screenSize,
            decoration:new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/app_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body:
            Stack(
              children: <Widget>[
                new Positioned(
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          child: CircleAvatar(
                            backgroundImage:
                            NetworkImage('http://res.cloudinary.com/'),
                            backgroundColor: Colors.green,
                            radius: 20,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text('* * * * *',textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,color: Colors.pink),),
                              new Text('CAPTAIN',textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0)),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: screenSize,
                  top: 170,
                ),
                new Positioned(
                  width: screenSize,
                  top: 310,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                          child: new TabBar(
                              controller: _tabController,
                              indicatorColor: Colors.pink,
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: tabList
                          ),
                        ),
                        new Container(
                          height: 20.0,
                          child: new TabBarView(
                            controller: _tabController,
                            children: tabList.map((Tab tab){
                              _getPage(tab);
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _getPage(Tab tab){
    switch(tab.text){
      case 'Overview': return Center(child: Text("ffff"),);
      case 'Orders': return Center(child: Text("gggg"));
    }
  }
}
