import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.teal,
      body: const SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/mure.jpg'),
            ),
            Text('Ogundipe Emmanuel Oluwamurewa'),
            Text('Flutter Developer'),
            Text("Super Front end Dev"),
            MyCard(
              icon: Icons.phone,
              text: '+234 708 335 0453',
            ),
            MyCard(
              icon: Icons.email,
              text: 'demiladeogundipe@gmail.com',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('For Bookings'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BookingsPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BookingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings Page'),
      ),
      body: const Center(
        child: Text('Bookings Content'),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const MyCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
