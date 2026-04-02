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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Demo'), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // === SECTION 1: COLUMN ===
            Text(
              '1. COLUMN (Vertikal)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text('Item 1')),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text('Item 2')),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('Item 3')),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // === SECTION 2: ROW ===
            Text(
              '2. ROW (Horizontal)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, size: 50, color: Colors.blue),
                  Icon(Icons.search, size: 50, color: Colors.green),
                  Icon(Icons.person, size: 50, color: Colors.orange),
                  Icon(Icons.settings, size: 50, color: Colors.purple),
                ],
              ),
            ),
            SizedBox(height: 30),
            // === SECTION 3: MainAxisAlignment ===
            Text(
              '3. MainAxisAlignment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildAlignmentDemo('start', MainAxisAlignment.start),
            SizedBox(height: 10),
            _buildAlignmentDemo('center', MainAxisAlignment.center),
            SizedBox(height: 10),
            _buildAlignmentDemo('end', MainAxisAlignment.end),
            SizedBox(height: 10),
            _buildAlignmentDemo('spaceBetween', MainAxisAlignment.spaceBetween),
            SizedBox(height: 10),
            _buildAlignmentDemo('spaceEvenly', MainAxisAlignment.spaceEvenly),
            SizedBox(height: 30),
            // === SECTION 4: STACK ===
            Text(
              '4. STACK (Tumpukan)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 250,
              child: Stack(
                children: [
                  // Layer 1 (paling bawah)
                  Container(width: 200, height: 200, color: Colors.blue),
                  // Layer 2
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.red,
                    ),
                  ),
                  // Layer 3 (paling atas)
                  Positioned(
                    top: 100,
                    left: 100,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ),
                  // Text di pojok kanan atas
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.favorite, color: Colors.white, size: 30),
                  ),
                  // Text di tengah
                  Center(
                    child: Text(
                      'CENTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // === SECTION 5: EXPANDED ===
            Text(
              '5. EXPANDED (Membagi Ruang)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Tanpa Expanded:'),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.blue),
                Container(width: 50, height: 50, color: Colors.green),
              ],
            ),
            SizedBox(height: 10),
            Text('Dengan Expanded:'),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('EXPANDED')),
                  ),
                ),
                Container(width: 50, height: 50, color: Colors.green),
              ],
            ),
            SizedBox(height: 10),
            Text('Expanded dengan flex ratio (1:2:1):'),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text('1')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: Center(child: Text('2')),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text('1')),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // === SECTION 6: SPACER & ALIGN ===
            Text(
              '6. SPACER & ALIGN',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Row(children: [Text('Left'), Spacer(), Text('Right')]),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue[50],
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.red,
                  child: Text(
                    'Top Right',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlignmentDemo(String label, MainAxisAlignment alignment) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Container(
            width: 50,
            height: 40,
            color: Colors.red,
            child: Center(child: Text('1')),
          ),
          Container(
            width: 50,
            height: 40,
            color: Colors.green,
            child: Center(child: Text('2')),
          ),
          Container(
            width: 50,
            height: 40,
            color: Colors.blue,
            child: Center(child: Text('3')),
          ),
        ],
      ),
    );
  }
}
