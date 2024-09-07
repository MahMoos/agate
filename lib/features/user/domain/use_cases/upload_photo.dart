part of 'use_cases.dart';

class UploadPhoto with UseCase<String, XFile> {
  const UploadPhoto(this.repository);
  final UserRepository repository;

  @override
  Future<String> call(XFile params) {
    return repository.uploadPhoto(params);
  }
}
