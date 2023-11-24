import 'package:flutter/material.dart';

class CustomerAccountPage extends StatelessWidget {
  // Dummy customer data, replace with actual data from your backend
  final List<Customer> customers = [
    Customer('John Doe', 'john.doe@example.com'),
    Customer('Jane Smith', 'jane.smith@example.com'),
    // Add more customer data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Accounts'),
        actions: [
          _buildProfileIcon(context), // Pass the context to _buildProfileIcon
        ],
      ),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(customers[index].name),
            subtitle: Text(customers[index].email),
            onTap: () {
              _navigateToProfile(context, customers[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildProfileIcon(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage:
          AssetImage('assets/logo.png'), // Replace with the actual image path
    );
  }

  void _navigateToProfile(BuildContext context, Customer customer) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(customer),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final Customer customer;

  ProfilePage(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            SizedBox(height: 20),
            Text(
              customer.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              customer.email,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Customer {
  final String name;
  final String email;

  Customer(this.name, this.email);
}
