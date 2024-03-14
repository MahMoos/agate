import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/api/api.dart';
import '../../../../common/entities/entities.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/models/models.dart';
import '../../data/data_sources/agate_explore_data_source.dart';
import '../../data/repositories/agate_explore_repository.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/explore_repository.dart';
import '../../domain/use_cases/use_cases.dart';

part 'books_controller.dart';
part 'controllers.g.dart';
part 'courses_controller.dart';
part 'departments_controller.dart';
part 'home_controller.dart';
part 'mcqs_controller.dart';
part 'my_courses_controller.dart';
part 'subjects_controller.dart';

@Riverpod(keepAlive: true)
Future<ExploreRepository> exploreRepository(ExploreRepositoryRef ref) async {
  final service = await ref.getDebouncedHttpService();
  return AgateExploreRepository(
    remote: AgateExploreDataSource(service),
  );
}
