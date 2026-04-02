import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  // 1. Gunakan print untuk debug
  print('Debug: Masuk fungsi main');
  // 2. Gunakan debugPrint untuk output panjang
  // debugPrint('Data: ' + data.toString());
  // 3. Gunakan breakpoint di IDE
  // Klik di sebelah kiri nomor baris untuk menambah breakpoint
  // 4. Flutter DevTools
  // Terminal: flutter pub global activate devtools
  // Kemudian: devtools
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pertamaku',
      debugShowCheckedModeBanner: false, // Hilangkan banner DEBUG
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});
  @override
  Widget build(BuildContext context) {
    String nama = "Muhammad Aqshal Habibi";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter! '),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon Flutter
            const Icon(
              Icons.flutter_dash,
              size: 100,
              color: Colors.greenAccent,
            ),
            const SizedBox(height: 20),
            // Judul
            Text(
              nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Subjudul
            const Text(
              'NIM: C030324029',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              'Hobi: Membaca Komik',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                    print('Tombol ditekan!');
                  },
                  icon: const Icon(Icons.favorite),
                  label: const Text('Tekan Saya!'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Hallo dari Aqshal")),
                    );
                  },
                  icon: const Icon(Icons.waving_hand),
                  label: const Text('Say Hello!'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
