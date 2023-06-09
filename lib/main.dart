import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_day1/util/appstyle.dart';

import 'delivery/page/delivery_cart_page.dart';
import 'delivery/page/delivery_catrgory_page.dart';
import 'delivery/page/delivery_home_page.dart';
import 'delivery/page/delivery_me_page.dart';
import 'delivery/helper/dependencies.dart' as repo;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  repo.initClient();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: primary,
        ),
        debugShowCheckedModeBanner: true,
        home: RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentPage = 0;
  List<Widget> pages = const [
    DeliveryHomePage(),
    DeliveryCategoryPage(),
    DeliveryCartPage(),
    DeliveryMePage()
  ];
  void _onItemSelect(int selectIndex) {
    setState(() {
      _currentPage = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("click11111");
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.cyan,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile")
        ],
        onTap: (int index) {
          _onItemSelect(index);
        },
        currentIndex: _currentPage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
