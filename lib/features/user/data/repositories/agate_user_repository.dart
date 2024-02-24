import '../../../../core/models/models.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/local_user_data_source.dart';
import '../models/models.dart';

class AgateUserRepository extends BaseRepository implements UserRepository {
  const AgateUserRepository({required this.storage})
      : super(localDataSource: storage);

  final LocalUserDataSource storage;

  @override
  Future<Preferences> getPreferences() async {
    return (await storage.getPreferences()).toEntity();
  }

  @override
  Future<bool> setPreferences(Preferences preferences) {
    return storage.setPreferences(preferences.toModel());
  }
}
