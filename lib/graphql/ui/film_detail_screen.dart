import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/graphql/schemas/queries.graphql.dart';
import 'package:flutter_network_client_sample/graphql/serivices/starwars_service.dart';

class FilmDetailScreen extends StatefulWidget {
  final String filmId;

  const FilmDetailScreen({super.key, required this.filmId});

  @override
  State<FilmDetailScreen> createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  final StarWarsService _starWarsService = StarWarsService();
  Query$GetFilmById$film? _film;
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadFilm();
  }

  Future<void> _loadFilm() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final result = await _starWarsService.getFilmById(widget.filmId);
      setState(() {
        _film = result.film;
        _isLoading = false;
      });
    } catch (e) {
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
        title: Text(_film?.title ?? 'Loading...'),
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
            Text('Error: $_error'),
            ElevatedButton(
              onPressed: _loadFilm,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (_film == null) {
      return const Center(child: Text('Film not found'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _film!.title ?? 'Unknown Title',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text('Director: ${_film!.director}'),
          Text('Episode: ${_film!.episodeID}'),
          Text('Release Date: ${_film!.releaseDate}'),
          const SizedBox(height: 16),
          const Text(
            'Opening Crawl:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(_film!.openingCrawl ?? ''),
        ],
      ),
    );
  }
}