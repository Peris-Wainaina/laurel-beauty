import 'package:flutter/material.dart';
import 'package:laurel_beauty/home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
   int _currentIndex= 0;
  final List<Widget> _pages= [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
      
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/Laurel logo.png', height: 50, fit: BoxFit.contain,),
        ),
        

        actions: [Icon(Icons.person)],
      ),
      body: _pages[_currentIndex] ,
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex =index;
        }),
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 134, 54, 81),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.sell), label: 'Brands'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}