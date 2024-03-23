part of 'controllers.dart';

@Riverpod(keepAlive: true)
class McqGames extends _$McqGames with PaginationController<McqGame> {
  late GetMcqGames _getMcqGames;

  @override
  Future<List<McqGame>> build([
    McqGamesParams params = const McqGamesParams(),
  ]) async {
    final repository = await ref.watch(exploreRepositoryProvider.future);
    _getMcqGames = GetMcqGames(repository);
    paginatedParams = params;
    return loadData();
  }

  @override
  FutureOr<List<McqGame>> loadData() async {
    return _getMcqGames(paginatedParams as McqGamesParams);
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
