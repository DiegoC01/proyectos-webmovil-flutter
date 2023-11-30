//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Actividad2(),
    );
  }
}

class Actividad2 extends StatelessWidget {
  const Actividad2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sedes Universidad de Los Lagos"),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2020/09/ulagos-scaled.jpg', // Reemplaza con la URL correcta
                    width: 200,
                    height: 200,
                  ),
                  const Text("ULagos Sede Osorno"),
                ],
              ),             
            ),
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2018/08/Chinquihue.jpg', // Reemplaza con la URL correcta
                    width: 200,
                    height: 200,
                  ),
                  const Text("ULagos Sede Puerto Montt"),
                ],
              ),             
            ),
            Card(
              child: Column(
                children: [
                  Image.network(
                    'https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-scaled.jpg', // Reemplaza con la URL correcta
                    width: 200,
                    height: 200,
                  ),
                  const Text("ULagos Sede Chiloé"),
                ],
              ),             
            ),
            ElevatedButton(
              onPressed: () async{
                // Acciones cuando se presiona el botón
                //print('Aquí hay más información');
                await launchUrl(
                  Uri.parse('https://www.ulagos.cl'),
                );
              },
              child: const Text('Más información'),
            ),
          ],
        ),
      ),
    );
  }
}