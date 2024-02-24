part of 'controllers.dart';

@riverpod
Future<Home> home(HomeRef ref) {
  return GetHome(
    AgateExploreRepository(
      remote: AgateExploreDataSource(ref.read(httpServiceProvider)),
    ),
  ).call();
}
