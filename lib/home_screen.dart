import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            Text("My name;")
            ]
        
          ),
          
        );
    
  }
}
