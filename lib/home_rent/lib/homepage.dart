import 'package:flutter/material.dart';
import 'package:home_rent/apartmentdetails.dart';
import 'package:home_rent/detailpage.dart';
import 'package:home_rent/hamburger_menu.dart';
import 'package:home_rent/notififaction.dart';
import 'package:home_rent/profile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top search section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Wrapped CircleAvatar with GestureDetector to enable onTap
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage2()),
                          );
                          // Handle menu button press
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 24,
                          child: const Icon(Icons.menu),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationScreen()),
                          );
                          // Handle notifications press
                        },
                        color: Colors.redAccent,
                        iconSize: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hi there! Searching in',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search here',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Featured section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle see all action
                    },
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            // Featured cards
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildFeaturedCard(
                    'Family House',
                    'West Delhi',
                    'https://st2.depositphotos.com/2249091/7750/i/450/depositphotos_77505400-stock-photo-beautiful-village-house-with-garden.jpg',
                    4.8,
                    '\$20/H',
                    context,
                  ),
                  buildFeaturedCard(
                    'Apartment',
                    'Ghaziabad',
                    'https://static.homeguide.com/assets/images/content/homeguide-new-apartment-building.jpg',
                    4.2,
                    '\$15/H',
                    context,
                  ),
                  buildFeaturedCard(
                    'Villa',
                    'Mumbai',
                    'https://img.vistarooms.com/gallery/vista-sadh-villa-c227d4.jpg',
                    4.2,
                    '\$15/H',
                    context,
                  ),
                  buildFeaturedCard(
                    'Hotel',
                    'Banglore',
                    'https://3.imimg.com/data3/JV/KJ/MY-15827078/hotels-booking.jpg',
                    4.2,
                    '\$15/H',
                    context,
                  ),
                ],
              ),
            ),
            // Recommendation section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Our Recommendation',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle see all action
                    },
                    child: const Text('See All'),
                  ),
                ],
              ),
            ),
            // Recommendation filter buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  buildFilterChip('All', true),
                  const SizedBox(width: 10),
                  buildFilterChip('House', false),
                  const SizedBox(width: 10),
                  buildFilterChip('Villa', false),
                  const SizedBox(width: 10),
                  buildFilterChip('Apartment', false),
                ],
              ),
            ),
            // Recommendation cards
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildRecommendationCard(
                    'Play Ground',
                    'https://www.shutterstock.com/image-vector/kindergarten-kids-playground-city-park-260nw-1120558709.jpg',
                  ),
                  buildRecommendationCard(
                    'Swiming Pool',
                    'https://leisurepools.eu/wp-content/uploads/2020/06/best-type-of-swimming-pool-for-my-home_2.jpg',
                  ),
                  buildRecommendationCard(
                    'Gym',
                    'https://t4.ftcdn.net/jpg/03/17/72/47/360_F_317724775_qHtWjnT8YbRdFNIuq5PWsSYypRhOmalS.jpg',
                  ),
                  buildRecommendationCard(
                    'Park',
                    'https://media.istockphoto.com/id/627585412/photo/beautiful-panorama-of-green-city-park-at-dawn.jpg?s=612x612&w=0&k=20&c=n8eDEZGEsv2_-E61W0ySyUwxyZ9rDyAP202xmB1dzQI=',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Navigate to the corresponding page when an item is tapped
          if (index == 2) {
            // Navigate to CollectionPage when Collection icon is clicked
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => CollectionPag()),
            // );
          } else {
            if (index == 1) {
              // Navigate to CollectionPage when Collection icon is clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApartmentDetailsPage()),
              );
            }

            if (index == 3) {
              // Navigate to CollectionPage when Collection icon is clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            }
            // Handle other navigation actions here
          }
        },
        selectedItemColor: Colors.black, // Set selected icon color to black
        unselectedItemColor: Colors.black, // Set unselected icon color to black
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Updated buildFeaturedCard with navigation to DetailPage
  Widget buildFeaturedCard(String title, String location, String imageUrl,
      double rating, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailPage when the card is clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      location,
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFilterChip(String label, bool selected) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (isSelected) {
        // Handle filter selection
      },
      selectedColor: Colors.green.shade100,
      checkmarkColor: selected ? Colors.green : Colors.black,
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget buildRecommendationCard(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
