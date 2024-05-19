import 'package:flutter/material.dart';
import 'package:foodie/components/my_drawer_tile.dart';
import 'package:foodie/pages/settings_page.dart';
import 'package:foodie/services/auth/auth_gate.dart';
import 'package:foodie/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(BuildContext context) {
    final authService = AuthService();
    authService.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AuthGate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ), // Icon
          ), // Padding
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ), // Divider
          ),

          // Home list tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // Settings list tile
          MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.home,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ));
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.home,
            onTap: () {
              logout(context);
            },
          ),
          const SizedBox(
            height: 25,
          ),
          // Logout list tile
        ],
      ),
    );
  }
}
