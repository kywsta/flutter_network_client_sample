import 'package:flutter/material.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_api.dart';
import 'package:flutter_network_client_sample/retrofit/apis/product/product_repository.dart';
import 'package:flutter_network_client_sample/shared/service_locator.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const int pageSize = 10;

class _HomeScreenState extends State<HomeScreen> {
  late final _paginController = PagingController<int, Product>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) {
      return serviceLocator<ProductRepository>().getProducts(pageSize, pageSize * pageKey);
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
              return Card(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(item.thumbnail),
                    ),
                    Text(item.title),
                    Text(item.description),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
