import 'package:flutter/material.dart';

void main() {
  // Entry point - fungsi pertama yang dijalankan
  runApp(MyApp());
}

// MyApp = widget root aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 2',
      home: CounterPage(),
    );
  }
}

// STATEFULWIDGET = Widget yang datanya BISA BERUBAH
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

// State = tempat menyimpan data yang bisa berubah
class _CounterPageState extends State<CounterPage> {
  // DATA (state) - angka counter
  int _counter = 0;
  // Method untuk tambah counter
  void _increment() {
    // setState() = beritahu Flutter untuk UPDATE tampilan
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Anda menekan tombol sebanyak:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '$_counter', // $ untuk interpolasi variabel
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: _decrement,
              child: Icon(Icons.remove),
              heroTag: 'decrement',
            ),
            FloatingActionButton(
              onPressed: _increment,
              child: Icon(Icons.add),
              heroTag: 'increment',
            ),
          ],
        ),
      ),
    );
  }
}
