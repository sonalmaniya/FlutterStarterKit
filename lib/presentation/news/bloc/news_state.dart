part of 'news_bloc.dart';

@immutable
class NewsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NewsLoadingState extends NewsState {
  @override
  List<Object?> get props => [];
}

class NewsLoadedState extends NewsState {
  NewsLoadedState({required this.news});
  final List<NewsModel> news;

  @override
  List<Object?> get props => [news];
}

class NewsErrorState extends NewsState {
  NewsErrorState({required this.error});
  final String error;

  @override
  List<Object?> get props => [error];
}
