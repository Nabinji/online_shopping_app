import 'package:e_commerce_app/Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavBar> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    super.initState();
    page = [
      const HomePage(),
      navBarPage(Icons.favorite),
      navBarPage(Icons.shopping_cart),
      navBarPage(Icons.person),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      // extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: GNav(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          color: Colors.white,
          activeColor: Colors.black,
          gap: 4,
          tabBackgroundGradient: const LinearGradient(colors: [
            Color.fromARGB(255, 176, 210, 238),
            Colors.deepPurple,
          ]),
          tabShadow: const [BoxShadow(color: Colors.black, blurRadius: 7)],
          padding: const EdgeInsets.all(12),
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.favorite, text: "Favorite"),
            GButton(icon: Icons.shopping_cart, text: "Cart"),
            GButton(icon: Icons.person, text: "Profile"),
          ],
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: page[selectedIndex],
    );
  }

  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.black,
      ),
    );
  }
}
