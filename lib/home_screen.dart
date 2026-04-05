import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final images = [
    Image.asset('assets/images/beauty1.jpeg'),
    Image.asset('assets/images/beauty2.jpeg'),
    Image.asset('assets/images/beauty3.jpeg'),
    Image.asset('assets/images/beauty4.jpeg'),
    Image.asset('assets/images/beauty5.jpeg'),
  ];
  int myCurrentIndex=0;
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 40),
        
           CarouselSlider( options: CarouselOptions(
              autoPlay: true,
              height: 200,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                 myCurrentIndex=index; 
                });
              },
          
          ),
          items: images,
          
          ),
        
        const SizedBox(height: 10,),
        AnimatedSmoothIndicator(activeIndex: myCurrentIndex, 
        count: images.length,
        effect: WormEffect(
          dotHeight: 8,
          dotWidth: 8,
          spacing: 5,
          dotColor:  Colors.grey, 
          activeDotColor:  const Color.fromARGB(255, 134, 54, 81),
          paintStyle: PaintingStyle.fill,
        ),
        

        ),
        ],
      ),
    );
  }
}
