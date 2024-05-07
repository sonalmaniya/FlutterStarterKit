import 'package:get_it/get_it.dart';
import '../network/network.dart' show Dio, NetworkClient;

import '../presentation/news/news.dart';
import '../presentation/news/repository/news_repository.dart';
import '../utils/utils.dart';

final getIt = GetIt.instance;

Future<void> initAppModule() async {
  getIt
    ..registerSingleton(Dio())
    ..registerSingleton(NetworkClient(getIt<Dio>()))
    ..registerSingleton(NewsApi(dioClient: getIt<NetworkClient>()))
    ..registerSingleton(NewsRepository(getIt<NewsApi>()));
  await SharedPreferencesUtil().init();
}
