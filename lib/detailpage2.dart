import 'package:flutter/material.dart';
import 'package:home_rent/booking.dart';

class DetailPage2 extends StatelessWidget {
  const DetailPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // House Image
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/house.jpg'),
                    // Replace with your image asset
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Title, Price, and Rating
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Family House',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text('1690 Old Road West Delhi',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$200/month',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 4),
                          Text('4.8'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Icons for features (beds, baths, sq ft)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _featureIcon(Icons.bed, '3 Beds'),
                  _featureIcon(Icons.bathtub, '2 Baths'),
                  _featureIcon(Icons.square_foot, '1000 Sq.'),
                ],
              ),
              const SizedBox(height: 16),
              // Description
              const Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Finding your dream home has never been this easy! '
                'Introducing Homehub, the ultimate House Rent App that '
                'redefines the way you search for rental properties. Immerse '
                'yourself in a world of convenience, style, and efficiency with '
                'our intuitive design and powerful features.',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              // Gallery
              const Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _galleryImage('assets/image1.jpg'),
                    _galleryImage('assets/images6.jpg'),
                    _galleryImage('assets/image1.jpg'),
                    _galleryImage('assets/images6.jpg'),
                    _galleryImage('assets/image1.jpg'),
                    _galleryImage('assets/images6.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Book Now Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action for booking
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingSummaryPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for feature icons
  Widget _featureIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.red, size: 28),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  // Helper widget for gallery images
  Widget _galleryImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
