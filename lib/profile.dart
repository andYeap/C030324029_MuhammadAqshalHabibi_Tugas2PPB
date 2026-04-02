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
      theme: ThemeData(
        fontFamily: "Linotte",
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        appBarTheme: AppBarTheme(centerTitle: true, elevation: 0),
        cardTheme: CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // STEP 1: Foto Profil
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("img/sigma.jpeg"),
            ),
            SizedBox(height: 16),
            // STEP 2: Nama
            Text(
              'Muhammad Aqshal Habibi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'C030324029',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // STEP 3: Bio
            Text(
              'Beginner Game Dev',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            // STEP 4: Info Cards
            _buildInfoCard(
              icon: Icons.email,
              title: 'Email',
              value: 'haqshal70@gmail.com',
            ),
            SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.phone,
              title: 'Telepon',
              value: '+62 812-5627-1986',
            ),
            SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.location_on,
              title: 'Lokasi',
              value: 'Banjarmasin, Indonesia',
            ),
            SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.web,
              title: 'Website',
              value: 'www.c030324029.com',
            ),
            SizedBox(height: 12),
            _buildInfoCard(
              icon: Icons.commit,
              title: 'Github',
              value: 'www.github.com',
            ),
            SizedBox(height: 24),
            // STEP 5: Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text('Edit Profil'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.logout),
                    label: Text('Logout'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
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

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: const Color.fromARGB(255, 85, 226, 29)),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
