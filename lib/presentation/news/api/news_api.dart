import '../../../network/network.dart' show Endpoints, NetworkClient, Response;

class NewsApi {
  NewsApi({required this.dioClient});
  final NetworkClient dioClient;

  Future<Response<dynamic>> getNewsApi() async {
    try {
      final Response<dynamic> response = await dioClient.get(
        Endpoints.newsList,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
