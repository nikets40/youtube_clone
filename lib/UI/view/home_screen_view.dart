import 'package:flutter/material.dart';
import 'package:youtube_clone/UI/pages/explore_page.dart';
import 'package:youtube_clone/UI/pages/home_page.dart';
import 'package:youtube_clone/UI/widgets/categories_list_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    tabController = new TabController(length: 5, vsync: this);
    _scrollController = new ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Theme.of(context).canvasColor,
          child: TabBar(
            tabs: bottomTabs(),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.transparent,
            labelStyle: TextStyle(fontSize: 12),
            labelPadding: EdgeInsets.all(0),
            controller: tabController,
          ),
        ),
      ),
      body: NestedScrollView(
        controller:_scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                centerTitle: false,
                primary: true,
                floating: true,
                automaticallyImplyLeading: false,
                elevation: 0,
                title: Image.asset(
                  "assets/images/title.png",
                  scale: 6,
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.videocam),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/user.jpeg"),
                      ),
                    ),
                  )
                ],
                bottom: CategoriesList(),
              )
            ];
          },
          body: TabBarView(
            children: [
              HomePage(),
              ExplorePage(),
              Container(),
              Container(),
              Container()
            ],
            controller: tabController,
          )),
    );
  }

  bottomTabs() {
    List<Tab> items = List<Tab>();
    items.add(Tab(icon: Icon(Icons.home), text: ("Home")));
    items.add(Tab(icon: Icon(Icons.explore), text: ("Explore")));
    items.add(Tab(icon: Icon(Icons.subscriptions), text: ("Subscriptions")));
    items.add(Tab(icon: Icon(Icons.mail), text: ("Inbox")));
    items.add(Tab(icon: Icon(Icons.video_library), text: ("Library")));

    return items;
  }
}
