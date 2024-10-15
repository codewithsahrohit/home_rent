import 'package:flutter/material.dart';
import 'package:home_rent/homepage.dart';
import 'package:home_rent/login.dart';
import 'package:home_rent/notififaction.dart';
import 'package:home_rent/profile.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                child: const Icon(Icons.person, size: 50),
              ),
            ),
            _buildDrawerItem(Icons.home, 'Home', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Homepage()), // Define your LogoutPage
              );
            }),
            _buildDrawerItem(Icons.person, 'Profile', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage()), // Define your LogoutPage
              );
            }),
            _buildDrawerItem(Icons.bookmark, 'My Booking'),
            _buildDrawerItem(Icons.collections, 'Collection'),
            _buildDrawerItem(Icons.notifications, 'Notification', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        NotificationScreen()), // Define your LogoutPage
              );
            }),
            _buildDrawerItem(Icons.message, 'Message'),
            _buildDrawerItem(Icons.settings, 'Setting'),
            _buildDrawerItem(Icons.help, 'Help'),

            // Logout button with Navigator.push
            _buildDrawerItem(Icons.logout, 'Logout', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Login()), // Define your LogoutPage
              );
            }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search section
              const Text(
                "Hi there! Searching in",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Search here",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Featured property
              const Text(
                "Featured",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _buildFeaturedCard(),

              const SizedBox(height: 16),

              // Recommendation section
              const Text(
                "Our Recommendation",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryButton("All", isSelected: true),
                  _buildCategoryButton("House"),
                ],
              ),
              const SizedBox(height: 8),
              _buildRecommendationList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set the current active tab
        onTap: (index) {
          // Handle bottom navigation bar actions
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  // Drawer item builder
  Widget _buildDrawerItem(IconData icon, String title, {VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.orange),
      title: Text(title),
      onTap: onTap ??
          () {
            // Default tap action if not provided
          },
    );
  }

  // Featured property card
  Widget _buildFeaturedCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYXV0aWZ1bCUyMGhvdXNlfGVufDB8fDB8fHww',
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          const Text(
            "Family House",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.red, size: 16),
              Text("West Delhi"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$20/month", style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Text("4.8"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Category button builder
  Widget _buildCategoryButton(String title, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.red[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.red : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  // Recommendation list builder
  Widget _buildRecommendationList() {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildRecommendationItem(),
          const SizedBox(width: 16),
          _buildRecommendationItem(),
        ],
      ),
    );
  }

  // Individual recommendation card
  Widget _buildRecommendationItem() {
    return Container(
      width: 120,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://leisurepools.eu/wp-content/uploads/2020/06/best-type-of-swimming-pool-for-my-home_2.jpg',
            height: 70,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 4),
          const Text(
            "La Grand mansion",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const Text("\$50/month"),
        ],
      ),
    );
  }
}

// Dummy LogoutPage for navigation

