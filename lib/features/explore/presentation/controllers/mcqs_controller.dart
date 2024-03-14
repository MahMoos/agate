part of 'controllers.dart';

@Riverpod(keepAlive: true)
class McqGames extends _$McqGames with PaginationController<McqGame> {
  late McqGamesParams _paginatedParams;
  late ExploreRepository _repo;

  @override
  Future<List<McqGame>> build([
    McqGamesParams params = const McqGamesParams(),
  ]) async {
    _repo = await ref.watch(exploreRepositoryProvider.future);
    _paginatedParams = params;
    return loadData();
  }

  @override
  FutureOr<List<McqGame>> loadData() async {
    return GetMcqGames(_repo).call(_paginatedParams);
  }
}

@riverpod
Future<McqGame> mcqGame(McqGameRef ref, String id) async {
  final repo = await ref.watch(exploreRepositoryProvider.future);
  final mcqGame = ref
      .watch(mcqGamesProvider().notifier)
      .data
      ?.firstWhereOrNull((game) => game.id == id);
  return mcqGame != null ? Future.value(mcqGame) : GetMcqGame(repo).call(id);
}
