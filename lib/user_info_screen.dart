import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:v1_micro_finance/auth_view_model.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AuthViewModel>(context).user;

    return Scaffold(
      appBar: AppBar(title: Text("User Info")),
      body: user == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name: ${user.name}", style: TextStyle(fontSize: 18)),
                  Text("Email: ${user.email}", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
    );
  }
}
