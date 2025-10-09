import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //icono de lla iquierda
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        //icono derecha
        actions: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: const Column(
        children: [
          //1. Texto principal

          //2. Pestañas

          //3 Contenido de pestañas

          //4.
        ],
      ),
    );
  }
}
