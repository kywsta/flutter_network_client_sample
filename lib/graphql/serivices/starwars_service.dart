import 'package:flutter_network_client_sample/graphql/schemas/queries.graphql.dart';
import 'package:flutter_network_client_sample/graphql/serivices/graphql_service.dart';

class StarWarsService {
  final GraphQLService _graphQLService = GraphQLService();

  Future<Query$GetAllFilms> getAllFilms() async {
    final options = Options$Query$GetAllFilms();

    final result = await _graphQLService.client.query$GetAllFilms(options);

    if (result.hasException) {
      throw GraphQLException(result.exception.toString());
    }

    return result.parsedData!;
  }

  Future<Query$GetFilmById> getFilmById(String id) async {
    final options = Options$Query$GetFilmById(
      variables: Variables$Query$GetFilmById(id: id),
    );

    final result = await _graphQLService.client.query$GetFilmById(options);

    if (result.hasException) {
      throw GraphQLException(result.exception.toString());
    }

    return result.parsedData!;
  }

  Future<Query$GetAllPeople> getAllPeople({
    int first = 10,
    String? after,
  }) async {
    final options = Options$Query$GetAllPeople(
      variables: Variables$Query$GetAllPeople(first: first, after: after),
    );

    final result = await _graphQLService.client.query$GetAllPeople(options);

    if (result.hasException) {
      throw GraphQLException(result.exception.toString());
    }

    return result.parsedData!;
  }
}

class GraphQLException implements Exception {
  final String message;
  GraphQLException(this.message);

  @override
  String toString() => 'GraphQLException: $message';
}
