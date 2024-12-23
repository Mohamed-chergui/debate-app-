import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: Center(
        child: Text(
          'Page ${selectedIndex + 1}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        shape: const CircleBorder(),
        elevation: 2.1,
        child: const Icon(Icons.add),  

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
       
            Row(
              children: [
                _buildNavItem(Icons.home, 'Home', 0),
                _buildNavItem(Icons.search, 'Search', 1),
              ],
            ),
            Row(
              children: [
                _buildNavItem(Icons.message, 'Messages', 2),
                _buildNavItem(Icons.person, 'Profile', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("Assets/icons/amphitheatre.png", 
            width: 25,
            height: 25), 
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: selectedIndex == index ? Colors.blue : Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}