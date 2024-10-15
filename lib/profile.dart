import 'package:flutter/material.dart';
import 'package:home_rent/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              // Profile picture and edit icon
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: const Stack(
                  children: [
                    // Replace this with user's image
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Username
              const SizedBox(height: 20),
              const Text(
                "Rohit Kumar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Spacing for options
              const SizedBox(height: 40),

              // Profile options
              ProfileOption(
                icon: Icons.person,
                label: 'Full name',
                onTap: () {},
              ),
              ProfileOption(
                icon: Icons.phone,
                label: 'Phone',
                onTap: () {},
              ),
              ProfileOption(
                icon: Icons.email,
                label: 'Email',
                onTap: () {},
              ),
              ProfileOption(
                icon: Icons.location_on,
                label: 'Location',
                onTap: () {},
              ),
              ProfileOption(
                icon: Icons.settings,
                label: 'Settings',
                onTap: () {},
              ),

              // Spacer to push the logout button to the bottom
              const Spacer(),

              // Logout button
              TextButton.icon(
                onPressed: () {
                  // Implement logout functionality
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for profile options
class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ProfileOption({super.key, 
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
      onTap: onTap,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
