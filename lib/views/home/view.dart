import 'package:flutter/material.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/appbar.dart';
import 'package:tranquility/views/home/pages/empty_chat_page.dart';
import 'package:tranquility/views/home/pages/profile_page.dart';
import 'package:tranquility/views/home/pages/quotes_page.dart';
import 'package:tranquility/views/home/widgets/drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final _list = [
    _Model(
      icon: 'chat.svg',
      page: EmptyChatPage(),
      title: 'Chats',
      activeIcon: 'chats_active.svg',
    ),
    _Model(
      icon: 'quote.svg',
      page: QuotesPage(),
      title: 'Quotes',
      activeIcon: 'quote_active.svg',
    ),
    _Model(
      icon: 'profile.svg',
      page: ProfilePage(),
      title: 'Profile',
      activeIcon: 'profile_active.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: _list[currentIndex].title, isDrawer: true),
      drawer: AppDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: AppImage(image: 'flaot_chat.svg'),
      ),
      body: _list[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: List.generate(
          _list.length,
          (index) => BottomNavigationBarItem(
            icon: AppImage(image: _list[index].icon),
            label: _list[index].title,
            activeIcon: AppImage(image: _list[index].activeIcon),
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String icon, activeIcon, title;

  final Widget page;

  _Model({
    required this.icon,
    required this.page,
    required this.title,
    required this.activeIcon,
  });
}
