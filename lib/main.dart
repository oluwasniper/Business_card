import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/mure.jpg'),
            ),
            Text('Ogundipe Emmanuel Oluwamurewa'),
            Text('Flutter Developer'),
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
                MaterialPageRoute(builder: (context) => BookingsPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class BookingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings Page'),
      ),
      body: Center(
        child: Text('Bookings Content'),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const MyCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
