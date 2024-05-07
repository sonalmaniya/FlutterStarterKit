import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../di/service_locator.dart';
import '../bloc/news_bloc.dart';
import '../repository/news_repository.dart';
import 'widgets/news_row.dart';

@RoutePage()
class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});
  final newsRepository = getIt.get<NewsRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: BlocProvider(
        create: (context) => NewsBloc(newsRepository)..add(LoadNewsEvent()),
        child: const NewsBlocBody(),
      ),
    );
  }
}

class NewsBlocBody extends StatelessWidget {
  const NewsBlocBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: _buildStateWidget,
    );
  }

  Widget _buildStateWidget(BuildContext context, NewsState state) {
    switch (state.runtimeType) {
      case NewsLoadingState:
        return const Center(child: CircularProgressIndicator());
      case NewsErrorState:
        final newsErrorState = state as NewsErrorState;
        return Center(
          child: Text(newsErrorState.error),
        );
      case NewsLoadedState:
        final newsLoadedState = state as NewsLoadedState;
        final newsData = newsLoadedState.news;
        return ListView.separated(
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          itemCount: newsData.length,
          itemBuilder: (_, index) {
            final news = newsData[index];
            return NewsRow(
              news: news,
              key: Key(index.toString()),
            );
          },
        );
      default:
        return Container();
    }
  }
}
