import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});
 
@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		title: const Text("Actividad 3"), 
	), 
	body: ListView( 
		children: [ 
		CarouselSlider( 
			items: [ 

				Container( 
          margin: const EdgeInsets.all(6.0), 
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(8.0), 
            image: const DecorationImage( 
              image: AssetImage('assets/images/001.png'), 
              fit: BoxFit.cover, 
            ), 
          ), 
				), 
				
				Container( 
          margin: const EdgeInsets.all(6.0), 
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(8.0), 
            image: const DecorationImage( 
              image: AssetImage('assets/images/004.png'), 
              fit: BoxFit.cover, 
            ), 
          ), 
				), 
				
				Container( 
          margin: const EdgeInsets.all(6.0), 
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(8.0), 
            image: const DecorationImage( 
              image: AssetImage('assets/images/005.png'), 
              fit: BoxFit.cover, 
            ), 
          ), 
				), 
				
				Container( 
          margin: const EdgeInsets.all(6.0), 
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(8.0), 
            image: const DecorationImage( 
              image: AssetImage('assets/images/007.png'),  
              fit: BoxFit.cover, 
            ), 
          ), 
				), 


		], 
			
			options: CarouselOptions( 
				height: 180.0, 
				enlargeCenterPage: true, 
				autoPlay: true, 
				aspectRatio: 16 / 9, 
				autoPlayCurve: Curves.fastOutSlowIn, 
				enableInfiniteScroll: true, 
				autoPlayAnimationDuration: const Duration(milliseconds: 800), 
				viewportFraction: 0.8, 
			), 
		), 
		], 
	), 

	); 
} 
}
