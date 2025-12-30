import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_api.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_remote_data_source.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_repository.dart';
import 'package:flutter_network_client_sample/retrofit/pages/home_screen.dart';
import 'package:flutter_network_client_sample/shared/dio_factory.dart';
import 'package:flutter_network_client_sample/shared/service_locator.dart';

void main() {
  _injectDependencies();

  runApp(const RetrofitSampleApp());
}

class RetrofitSampleApp extends StatelessWidget {
  const RetrofitSampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

void _injectDependencies() {
  final dio = DioFactory().getDio();

  serviceLocator.registerSingleton<Dio>(dio);

  serviceLocator.registerSingleton<ProductApi>(ProductApi(dio));

  serviceLocator.registerSingleton<ProductRemoteDataSource>(
    ProductRemoteDataSource(serviceLocator<ProductApi>()),
  );

  serviceLocator.registerSingleton<ProductRepository>(
    ProductRepository(serviceLocator<ProductRemoteDataSource>()),
  );
}
