import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Aplikasi Pertamaku';
    String name = 'Vidya Tiara Eka Putri';
    String message = 'Halo nama saya $name, selamat datang di $title';
    
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(title),
        ),
        body: Column(
          // mengatur posisi content secara vertical
          mainAxisAlignment: .start,
          // mengatur posisi secara horizontal
          crossAxisAlignment: .start,
          children: [
            Text(message),
            Text(message),
            Text(message),
            Text(message),
            Text(message),
          ]
        ),
      ),
    );
  }
}