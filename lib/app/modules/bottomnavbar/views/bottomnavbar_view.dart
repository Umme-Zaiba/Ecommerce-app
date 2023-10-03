import 'package:eapp/app/modules/cart/views/cart_view.dart';
import 'package:eapp/app/modules/categories/views/categories_view.dart';
import 'package:eapp/app/modules/home/views/home_view.dart';
import 'package:eapp/app/modules/notification/views/notification_view.dart';
import 'package:eapp/app/modules/useraccount/views/useraccount_view.dart';
import 'package:flutter/material.dart';


// class BottomnavbarView extends GetView<BottomnavbarController> {
 class BottomnavbarView extends StatefulWidget {
  const BottomnavbarView({super.key});

  @override
  State<BottomnavbarView> createState() => _BottomnavbarViewState();
}

class _BottomnavbarViewState extends State<BottomnavbarView> {
  int _selectedIndex =0;
  void _navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeView(),
    CategoriesView(),
    NotificationView(),
    UseraccountView(),
    CartView(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[900],
        unselectedItemColor: Colors.grey[700],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category_sharp), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}
