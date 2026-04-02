import 'package:flutter/material.dart';

void main() {
  // Entry point - fungsi pertama yang dijalankan
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 2',
      home: ProfilCardDemo(),
    );
  }
}

class ProfilCardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Dasar'), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kita akan isi step by step
            // 1. TEXT WIDGET
            Text('Halo Dunia!'),
            SizedBox(height: 10),
            Text(
              'Teks dengan Style',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Teks dengan berbagai gaya: italic, underline',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 20),
            // 2. CONTAINER WIDGET
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,
              child: Center(
                child: Text(
                  'Container Sederhana',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Container dengan decoration (lebih keren!)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: Column(
                children: [
                  Text(
                    'Container dengan Decoration',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Border radius + Shadow + Border',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // 3. IMAGE WIDGET
            Text(
              'Image dari Internet:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://picsum.photos/400/200',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Center(child: Icon(Icons.broken_image, size: 50)),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // 4. ICON & CIRCLE AVATAR
            Text(
              'Icon & Avatar:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.star, size: 40, color: Colors.amber),
                Icon(Icons.settings, size: 40, color: Colors.grey),
              ],
            ),
            SizedBox(height: 20),
            // CircleAvatar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.person, size: 30, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/100/100',
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: Text(
                    'AB',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // 5. BUTTON WIDGETS
            Text(
              'Berbagai Jenis Button:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton ditekan!');
              },
              child: Text('ElevatedButton'),
            ),
            SizedBox(height: 10),
            // ElevatedButton dengan icon
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.send),
              label: Text('Kirim Pesan'),
            ),
            SizedBox(height: 10),
            // TextButton
            TextButton(
              onPressed: () {},
              child: Text('TextButton (Aksi Sekunder)'),
            ),
            SizedBox(height: 10),
            // OutlinedButton
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton (Alternatif)'),
            ),
            SizedBox(height: 10),
            // Custom styled button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Custom Button'),
            ),
            SizedBox(height: 10),
            // IconButton
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.red,
              iconSize: 32,
            ),
            // 6. CARD & LISTTILE
            Text(
              'Card & ListTile:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Card sederhana
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('Ini adalah Card sederhana'),
              ),
            ),
            SizedBox(height: 10),
            // Card dengan ListTile
            Card(
              elevation: 4, // Tinggi bayangan (shadow)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text(
                  'Nama Mahasiswa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('NIM: 123456789'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  print('Card ditekan!');
                },
              ),
            ),
            SizedBox(height: 10),
            // Card dengan info lebih lengkap
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.blue),
                    title: Text('Email'),
                    subtitle: Text('mahasiswa@example.com'),
                  ),
                  Divider(height: 1), // Garis pemisah
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.green),
                    title: Text('Telepon'),
                    subtitle: Text('+62 812-3456-7890'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.red),
                    title: Text('Alamat'),
                    subtitle: Text('Jakarta, Indonesia'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
