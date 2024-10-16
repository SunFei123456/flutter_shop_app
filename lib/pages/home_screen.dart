import 'package:flutter/material.dart';
import 'package:shop_demo/components/bottom_nav_bar.dart';
import 'package:shop_demo/pages/cart_screen.dart';
import 'package:shop_demo/pages/mine_screen.dart';
import 'package:shop_demo/pages/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 1, 定义一变量索引表示当前展示的页
  int _selectedIndex = 0;

  // 2. 定义一个方法去修改这个变量索引的值
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 3.定义一个页面列表
  final List<Widget> _pages = [const ShopScreen(), const CartScreen(),const MineScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) {
          _onItemTapped(index);
        },
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(46, 255, 255, 255),
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                )),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 57, 57, 57),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
