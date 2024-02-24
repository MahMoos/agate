part of 'use_cases.dart';

class GetHome with UseCase<Home, NoParams?> {
  const GetHome(this.repository);
  final ExploreRepository repository;

  @override
  Future<Home> call([NoParams? params]) {
    return repository.getHome();
  }
}
