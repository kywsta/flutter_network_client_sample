import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/graphql/schemas/queries.graphql.dart';
import 'package:flutter_network_client_sample/graphql/serivices/starwars_service.dart';
import 'package:flutter_network_client_sample/graphql/ui/film_detail_screen.dart';

class FilmsScreen extends StatefulWidget {
  const FilmsScreen({super.key});

  @override
  State<FilmsScreen> createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  final StarWarsService _starWarsService = StarWarsService();
  List<Query$GetAllFilms$allFilms$films> _films = [];
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadFilms();
  }

  Future<void> _loadFilms() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _starWarsService.getAllFilms();
      setState(() {
        _films = result.allFilms!.films!.nonNulls.toList();
        _isLoading = false;
      });
    } catch (e) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: StackTrace.current,
      ));
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars Films'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _loadFilms),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Error: $_error',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _loadFilms, child: const Text('Retry')),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: _films.length,
      itemBuilder: (context, index) {
        final film = _films[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(
              film.title ?? 'Unknown Title',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Director: ${film.director ?? 'Unknown'}'),
                Text('Episode: ${film.episodeID ?? 'Unknown'}'),
                Text('Release Date: ${film.releaseDate ?? 'Unknown'}'),
              ],
            ),
            onTap: () => _navigateToFilmDetail(film.id!),
          ),
        );
      },
    );
  }

  void _navigateToFilmDetail(String filmId) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FilmDetailScreen(filmId: filmId)),
    );
  }
}
