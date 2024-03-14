part of 'use_cases.dart';

class GetMcqGame with UseCase<McqGame, String> {
  const GetMcqGame(this.repository);

  final ExploreRepository repository;

  @override
  Future<McqGame> call(String params) {
    return repository.getMcqGame(params);
  }
}
