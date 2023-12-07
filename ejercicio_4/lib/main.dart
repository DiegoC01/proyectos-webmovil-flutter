import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Actividad 4"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(255, 156, 89, 244),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.view_carousel),
            icon: Icon(Icons.view_carousel),
            label: 'Carrusel',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle),
            label: 'Mi perfil',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Center(
          child: ListView( 
            children: [ 
            CarouselSlider( 
              items: [ 
                
                Card(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/1.jpg')
                            )
                        ),
                      ),
                      const Text("Navidad, navidad"),
                    ],
                  ),
                ),

                Card(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/2.jpg')
                            )
                        ),
                      ),
                      const Text("Hoy es navidad"),
                    ],
                  ),
                ),
              

                Card(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/3.jpg')
                            )
                        ),
                      ),
                      const Text("Es un día de alegría"),
                    ],
                  ),
                ),

                Card(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/4.jpg')
                            )
                        ),
                      ),
                      const Text("Y felicidad"),
                    ],
                  ),
                ),


            ], 
              
              options: CarouselOptions( 
                height: 400.0, 
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
        ),

        /// Notifications page
        
            Card(
              child: Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', // Reemplaza con la URL correcta
                      width: 200,
                      height: 200,
                    ),
                    const Text("Foto de perfil"),
                    ElevatedButton(
                      onPressed: () async{
                        // Acciones cuando se presiona el botón
                        //print('Aquí hay más información');
                        await launchUrl(
                          Uri.parse('https://www.google.cl'),
                        );
                      },
                      child: const Text('Editar Perfil'),
                    ),
                  ],
                ),  
              )
            ),

      ][currentPageIndex],
    );
  }
}
