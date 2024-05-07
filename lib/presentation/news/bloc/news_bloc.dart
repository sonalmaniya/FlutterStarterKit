import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/news_model.dart';
import '../repository/news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this._newsRepository) : super(NewsState()) {
    on<LoadNewsEvent>(_onLoadNewsEvent);
  }
  final NewsRepository _newsRepository;

  dynamic _onLoadNewsEvent(LoadNewsEvent event, Emitter<NewsState> emit) async {
    emit(NewsLoadingState());
    try {
      final news = await _newsRepository.fetchNews();
      emit(NewsLoadedState(news: news));
    } catch (e) {
      emit(NewsErrorState(error: e.toString()));
    }
  }
}
