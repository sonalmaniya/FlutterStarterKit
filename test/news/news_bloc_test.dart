import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_starter_kit/presentation/news/bloc/news_bloc.dart';
import 'package:flutter_starter_kit/presentation/news/models/news_model.dart';
import 'package:flutter_starter_kit/presentation/news/repository/news_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsRepository extends Mock implements NewsRepository {}

void main() {
  late NewsBloc newsBloc;
  late MockNewsRepository mockRepository;

  setUp(() {
    mockRepository = MockNewsRepository();
    newsBloc = NewsBloc(mockRepository);
  });

  tearDown(() {
    newsBloc.close();
  });

  test('initial state is NewsInitial', () {
    expect(newsBloc.state, NewsState());
  });

  blocTest<NewsBloc, NewsState>(
    'emits [NewsLoading, NewsLoaded] when fetch is successful',
    build: () {
      when(() => mockRepository.fetchNews()).thenAnswer((_) async => [
            NewsModel(userId: 1, id: 1, title: 'Test', body: 'Test Description')
          ]);
      return newsBloc;
    },
    act: (bloc) => bloc.add(LoadNewsEvent()),
    expect: () => [isA<NewsLoadingState>(), isA<NewsLoadedState>()],
  );
}
