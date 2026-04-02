// Import package Material (komponen UI)
import 'package:flutter/material.dart';

// Fungsi utama - titik awal aplikasi
void main() {
  runApp(const MyApp()); // Jalankan widget MyApp
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // MaterialApp = wrapper untuk aplikasi Material Design
    return MaterialApp(
      title: 'Nama Aplikasi',
      home: Scaffold(
        // Scaffold = struktur dasar halaman
        appBar: AppBar(title: Text('Judul di AppBar')),
        body: Center(child: Text('Konten di sini')),
      ),
    );
  }
}
