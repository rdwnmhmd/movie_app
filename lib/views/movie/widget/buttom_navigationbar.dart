import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomButtomBar extends StatelessWidget {
  const CustomButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomNavigationBar(
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            title: Text('Notif'),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profil'),
          ),
        ],
      ),
    );
  }
}
