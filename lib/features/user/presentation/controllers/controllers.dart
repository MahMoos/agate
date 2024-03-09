import 'dart:io';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/api/api.dart';
import '../../../../common/entities/entities.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/storage/storage_service.dart';
import '../../data/data_sources/user_data_source.dart';
import '../../data/repositories/agate_user_repository.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/use_cases/use_cases.dart';

part 'controllers.g.dart';
part 'preferences_controller.dart';
part 'transactions_controller.dart';
part 'wallet_controller.dart';

@Riverpod(keepAlive: true)
Future<UserRepository> userRepository(UserRepositoryRef ref) async {
  final storage = await ref.read(storageServiceProvider.future);
  final client = await ref.getDebouncedHttpService();
  return AgateUserRepository(
    remote: RemoteUserDataSource(client),
    storage: LocalUserDataSource(storage),
  );
}
