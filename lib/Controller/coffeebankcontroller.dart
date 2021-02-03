import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Teste {
  final String title;

  Teste({this.title});

  factory Teste.fromJson(Map<String, dynamic> json) {
    return Teste(
      title: json['message'],
    );
  }
}

Future<http.Response> createUser(String name) {
  return http.post(
    'https://jsonplaceholder.typicode.com/albums',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      'username': name,
      'value': 0,
    }),
  );
}

// http://192.168.0.109:4242/createUser
