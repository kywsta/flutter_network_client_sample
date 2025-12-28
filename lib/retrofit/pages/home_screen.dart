import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_api.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_remote_data_source.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_repository.dart';
import 'package:flutter_network_client_sample/retrofit/default_parser_error_logger.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductRepository _productRepository = ProductRepository(
    ProductRemoteDataSource(
      ProductApi(
        Dio(
          BaseOptions(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        ),
        errorLogger: DefaultParserErrorLogger(),
      ),
    ),
  );

  late final _paginController = PagingController<int, Product>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) {
      return _productRepository.getProducts(10, pageKey);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  AppBar _buildAppBar() {
    return AppBar(title: const Text('Home'));
  }

  Widget _buildBody() {
    return _buildProductList();
  }

  Widget _buildProductList() {
    return PagingListener(
      controller: _paginController,
      builder: (context, state, fetchNextPage) {
        return PagedListView(
          state: state,
          fetchNextPage: fetchNextPage,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            itemBuilder: (context, item, index) {
              return ListTile(title: Text(item.title));
            },
          ),
        );
      },
    );
  }
}
