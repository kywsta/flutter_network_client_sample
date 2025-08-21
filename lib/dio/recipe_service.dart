import 'package:dio/dio.dart';
import 'package:flutter_network_client_sample/dio/dio_service.dart';
import 'package:flutter_network_client_sample/dio/recipe.dart';

class RecipeService {
  final DioService _dioService = DioService();

  Future<List<Recipe>> getRecipes({int limit = 30, int skip = 0}) async {
    try {
      final response = await _dioService.dio.get(
        '/recipes',
        queryParameters: {'limit': limit, 'skip': skip},
      );

      if (response.statusCode == 200) {
        final List<dynamic> recipesJson = response.data['recipes'];
        return recipesJson.map((json) => Recipe.fromJson(json)).toList();
      } else {
        throw ApiException('Failed to fetch recipes: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw ApiException('Unexpected error: $e');
    }
  }

  Future<Recipe> getRecipeById(int id) async {
    try {
      final response = await _dioService.dio.get('/recipes/$id');

      if (response.statusCode == 200) {
        return Recipe.fromJson(response.data);
      } else {
        throw ApiException('Recipe not found');
      }
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  ApiException _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ApiException('Connection timeout');
      case DioExceptionType.badResponse:
        return ApiException('Server error: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return ApiException('Request cancelled');
      case DioExceptionType.connectionError:
        return ApiException('No internet connection');
      default:
        return ApiException('Unknown error occurred');
    }
  }
}

class ApiException implements Exception {
  final String message;
  ApiException(this.message);

  @override
  String toString() => 'ApiException: $message';
}
