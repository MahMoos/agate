part of 'use_cases.dart';

class GetMcqGames with UseCase<List<McqGame>, McqGamesParams> {
  const GetMcqGames(this.repository);

  final ExploreRepository repository;

  @override
  Future<List<McqGame>> call(McqGamesParams params) {
    return repository.getMcqGames(params);
  }
}
