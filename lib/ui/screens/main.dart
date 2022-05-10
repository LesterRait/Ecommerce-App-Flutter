import 'package:ecommerce/domain/repository/blog_repository.dart';
import 'package:ecommerce/ui/screens/index.dart';
import 'package:ecommerce/ui/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectTab = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    AccountScreen()
  ];

  void onSelectTap(int index) {
    if (_selectTab == index) return;
    setState(() {
      _selectTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    BlogProvider().getBlog();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonoff.kz'),
      ),
      drawer: const NavigationDrawer(),
      body: Center(child: _screenOptions[_selectTab]),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        currentIndex: _selectTab,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Кабинет',
          ),
        ],
        onTap: onSelectTap,
      ),
    );
  }
}
