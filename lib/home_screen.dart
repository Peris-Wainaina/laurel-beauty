import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 60,
          height: 60,
          child: Image.asset('assets/images/Laurel Logo.png'),
        ),

        actions: [Icon(Icons.person)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 134, 54, 81),
              child: Center(
                
                child: Text(
                  'Free Delivery For Orders above 3,500/=',
                  style: TextStyle(
                
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
