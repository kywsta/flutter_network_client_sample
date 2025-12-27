import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/retrofit/pages/home_screen.dart';

void main() {
  runApp(const RetrofitSampleApp());
}

class RetrofitSampleApp extends StatelessWidget {
  const RetrofitSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
