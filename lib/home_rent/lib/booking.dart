import 'package:flutter/material.dart';
import 'package:home_rent/payment.dart';

class BookingSummaryPage extends StatelessWidget {
  const BookingSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Booking Summary',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildProgressStep(Icons.check_circle, 'Address',
                    isActive: true),
                _buildProgressStep(Icons.looks_two, 'Booking Summary',
                    isActive: true),
                _buildProgressStep(Icons.looks_3, 'Payment'),
              ],
            ),
            const SizedBox(height: 20),

            // Input Fields
            _buildTextField('Username'),
            _buildTextField('Full name'),
            _buildTextField('City'),
            _buildTextField('E-mail'),
            _buildTextField('Contact'),
            const SizedBox(height: 20),

            // Price and house info at the bottom
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '\$200/month',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red, size: 18),
                      SizedBox(width: 4),
                      Text('1690 West Delhi'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Family House',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 40.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()),
                        );
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build text field
  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.orange,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  // Method to build progress step
  Widget _buildProgressStep(IconData icon, String label,
      {bool isActive = false}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isActive ? Colors.grey[800] : Colors.grey[400],
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}
