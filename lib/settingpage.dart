import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Card
            Card(
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    // User Photo
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/user_photo.jpg'), // Replace with user photo path
                    ),
                    SizedBox(width: 16),
                    // User Name and Email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe", // Replace with user's name
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "johndoe@example.com", // Replace with user's email
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),

            // Settings Options
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "General Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            // List of Settings
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // Notification Settings
                  ListTile(
                    leading: const Icon(Icons.notifications, color: Colors.blueGrey),
                    title: const Text("Notifications"),
                    subtitle: const Text("Manage your notifications"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Add functionality here
                    },
                  ),
                  const Divider(height: 0),
                  // Privacy Settings
                  ListTile(
                    leading: const Icon(Icons.lock, color: Colors.blueGrey),
                    title: const Text("Privacy"),
                    subtitle: const Text("Manage your privacy settings"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Add functionality here
                    },
                  ),
                  const Divider(height: 0),
                  // Theme Settings
                  ListTile(
                    leading: const Icon(Icons.palette, color: Colors.blueGrey),
                    title: const Text("Theme"),
                    subtitle: const Text("Switch between light and dark mode"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Add functionality here
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Logout Button
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Add logout functionality here
                },
                icon: const Icon(Icons.logout),
                label: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
