part of 'controllers.dart';

@riverpod
Future<Home> home(HomeRef ref) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  return GetHome(repo).call();
}
