import 'package:flutter/material.dart';

void main() => runApp(const AppParisina());

class AppParisina extends StatelessWidget {
  const AppParisina({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parisina",
      home: Telas(),
    );
  }
} //Fin clase AppParisina

class Telas extends StatelessWidget {
  const Telas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parisina"),
        backgroundColor: Colors.blue,
        actions: const [
          Icon(Icons.bedroom_baby),
          SizedBox(width: 10),
          Icon(Icons.camera_alt_rounded),
          SizedBox(width: 10),
        ],
      ),
      drawer: const Drawer(),
      // Cuerpo de la aplicación con la tarjeta centrada
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                // Fondo azul pastel degradado
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFE1F5FE), // Azul pastel claro
                    Color(0xFFB3E5FC), // Azul pastel un poco más intenso
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar con imagen desde la red
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/DeLaRosaRojas/IAmoviles_Act5_AppCard_Gpo6I/refs/heads/main/DeLaRosa.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Título en azul oscuro
                  const Text(
                    'De La Rosa Abril',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01579B), // Azul muy oscuro
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Subtítulo en azul oscuro
                  const Text(
                    'Gerente de Telas',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0277BD), // Azul oscuro medio
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} //Fin clase Telas