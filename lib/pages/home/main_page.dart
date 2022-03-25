import 'package:flutter/material.dart';
import 'package:uni/pages/home/dm_page.dart';
import 'package:uni/pages/home/fav_page.dart';
import 'package:uni/pages/home/home_page.dart';
import 'package:uni/pages/home/notification_page.dart';
import 'package:uni/pages/home/post_page.dart';
import 'package:uni/pages/home/profile_drawer.dart';
import 'package:uni/pages/home/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List pages = const [HomePage(), SearchPage(), FavPage(), DmPage()];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SideProfile(),
      body: pages[currentindex],
      backgroundColor: Color.fromARGB(255, 70, 70, 70),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.blue.shade400,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "Favourite", icon: Icon(Icons.bookmark_outline)),
          BottomNavigationBarItem(
              label: "Message", icon: Icon(Icons.mail_outlined))
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.person)),
            foregroundImage: const AssetImage("img/wpone.jpg"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppNotification(),
                    ));
              },
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PostPage(),
              ));
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
