import '../../../network/error_handler.dart';
import '../api/news_api.dart';
import '../models/news_model.dart';

class NewsRepository {
  NewsRepository(this.newsApi);
  final NewsApi newsApi;

  Future<List<NewsModel>> fetchNews() async {
    try {
      final response = await newsApi.getNewsApi();
      final news = (response.data as List)
          .map(
            (json) => NewsModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
      return news;
    } catch (error) {
      throw Exception(ErrorHandler.handle(error).failure.message);
    }
  }
}
