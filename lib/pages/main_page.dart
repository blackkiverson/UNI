import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smifapp/pages/dm_page.dart';
import 'package:smifapp/pages/fav_page.dart';
import 'package:smifapp/pages/home_page.dart';
import 'package:smifapp/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      body: pages[currentindex],
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.blue.shade400,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: "Favourite", icon: Icon(Icons.bookmark_outline)),
          BottomNavigationBarItem(
              label: "Message", icon: Icon(Icons.mail_outlined))
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            foregroundImage: const AssetImage("img/wpone.jpg"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
