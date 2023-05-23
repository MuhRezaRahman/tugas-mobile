import 'package:flutter/material.dart';

void main() {
  runApp(HomeGoogleApp());
}

class HomeGoogleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Google',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeGoogleScreen(),
    );
  }
}

class HomeGoogleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.apps),
            onPressed: () {
              // Aksi saat tombol aplikasi diklik
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tuesday, May 18',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar.png'),
            ),
            title: Text('Muh.Reza Rahman'),
            subtitle: Text('reza.rahman@gmail.com'),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: () {
                // Navigasi ke halaman profil pengguna
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () {
              // Navigasi ke halaman pencarian
            },
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Mail'),
            onTap: () {
              // Navigasi ke halaman surel
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Calendar'),
            onTap: () {
              // Navigasi ke halaman kalender
            },
          ),
          // Tambahkan item lain sesuai kebutuhan
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
