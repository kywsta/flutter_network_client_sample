import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  static final GraphQLService _instance = GraphQLService._internal();
  factory GraphQLService() => _instance;
  GraphQLService._internal();

  late GraphQLClient _client;

  void initialize() {
    final HttpLink httpLink = HttpLink(
      'https://swapi-graphql.netlify.app/graphql',
    );

    // final AuthLink authLink = AuthLink(
    //   getToken: () async {
    //     // Return your authentication token
    //     return 'Bearer YOUR_TOKEN_HERE';
    //   },
    // );

    // final Link link = authLink.concat(httpLink);

    _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: InMemoryStore()),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.noCache,
        ),
      ),
    );
  }

  GraphQLClient get client => _client;
}