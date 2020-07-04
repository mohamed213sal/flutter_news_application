import 'package:flutter/material.dart';
import 'shared_ui/drawer_list.dart';
import 'tab_pages/popular.dart';
import 'tab_pages/whats_news.dart';
import 'tab_pages/favourited.dart';

class HomeScreenTask extends StatefulWidget {
  @override
  _HomeScreenTaskState createState() => _HomeScreenTaskState();
}

class _HomeScreenTaskState extends State<HomeScreenTask>
    with TickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 2, length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        bottom: TabBar(
          tabs: <Widget>[
            Text("WHAT'S NEWS"),
            Text("POPULAR"),
            Text("FAVOURITED"),
          ],
          controller: _tabController,
          indicatorColor: Colors.black87,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          WhatsNews(),
          Popular(),
          Favourited(),
        ],
        controller: _tabController,
      ),
    );
  }
}
