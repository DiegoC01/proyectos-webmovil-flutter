import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Ejercicio 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PrimerEjercicio(),
    ),
  );
}

// Se crea un widget sin estado
class PrimerEjercicio extends StatelessWidget {
  const PrimerEjercicio({super.key});

  @override
  // Widget
  Widget build(BuildContext context) {
    return Scaffold(
      // En esta parte va el título que se va a ver arriba.
      appBar: AppBar(
        title: const Text('Primer ejercicio Flutter'),
      ),
      // Este es el body, en donde se va a colocar la estructura de la app.
      body: Column(children: [
        // Aquí va el botón
        ElevatedButton(
          onPressed: () async {
            // Este es el mensaje que mostrará en la terminal, no en la pantalla
            print('Hola mundo!');
          },
          // Texto que mostrará el botón.
          child:  const Text('Presione para saludar'),
        )
      ]),
    );
  }
}