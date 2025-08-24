import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/graphql/serivices/graphql_service.dart';
import 'package:flutter_network_client_sample/graphql/ui/films_screen.dart';

void main() {
  GraphQLService().initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FilmsScreen(),
    );
  }
}