import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:v1_micro_finance/user_mode.dart';

class LoginViewModel with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  User? _user;
  User? get user => _user;

  // Perform login and fetch user data
  Future<bool> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    final response = await http.post(
      Uri.parse('http://108.181.173.121:7071/login'), // Your login endpoint
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    _isLoading = false;
    notifyListeners();

    if (response.statusCode == 200) {
      // On successful login, fetch user data
      _user = User.fromJson(json.decode(response.body));
      return true;
    } else {
      return false;
    }
  }
}
