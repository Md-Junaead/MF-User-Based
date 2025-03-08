import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:v1_micro_finance/login_view_model.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access user data from the ViewModel
    final user = Provider.of<LoginViewModel>(context).user;

    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('User Profile')),
        body: const Center(child: Text('No user data available')),
      );
    }

    // Build a responsive layout
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use MediaQuery to check screen size and adapt
          bool isMobile = constraints.maxWidth < 600;

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16.0 : 32.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Displaying user details
                Text(
                  'Name: ${user.name}',
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Email: ${user.email}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Phone: ${user.phoneNo ?? 'N/A'}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Address: ${user.address ?? 'N/A'}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Country: ${user.country}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Role: ${user.role}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Active: ${user.active ? 'Yes' : 'No'}',
                  style: TextStyle(fontSize: isMobile ? 14 : 18),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
