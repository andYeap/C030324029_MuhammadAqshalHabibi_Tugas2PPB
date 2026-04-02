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
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spacing Demo"), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === PADDING ===
            Text(
              'Padding Demo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  color: Colors.blue,
                  child: Text('Padding 20 semua sisi'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Container(
                  color: Colors.green,
                  child: Text('Padding H:40 V:10'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.only(left: 50, top: 10),
                child: Container(
                  color: Colors.red,
                  child: Text('Padding Left:50 Top:10'),
                ),
              ),
            ),
            Image.asset(
              'assets/images/mi-ayam.jpg',
              width: 350,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            Text(
              "Fredoka Font",
              style: TextStyle(color: Colors.black, fontFamily: "Fredoka"),
            ),
          ],
        ),
      ),
    );
  }
}
