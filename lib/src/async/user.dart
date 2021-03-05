import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<User>> fetchUser(http.Client client) async {
  final response =
      await client.get('https://jsonplaceholder.typicode.com/users/1');

  // Use the compute function to run parseUsers in a separate isolate.
  return compute(parseUsers, response.body);
}

List<User> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  print(parsed);

  return parsed.map<User>((json) => User.fromJson(json)).toList();
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;

  User({this.id, this.name, this.username, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
    );
  }
}
