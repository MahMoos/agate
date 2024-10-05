import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/api/api.dart';
import '../../../../core/extensions/extensions.dart';
import '../../data/data_sources/agate_course_data_source.dart';
import '../../data/repositories/agate_course_repository.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/course_repository.dart';
import '../../domain/use_cases/use_cases.dart';

part 'controllers.g.dart';
part 'course_controller.dart';
part 'lectures_controller.dart';
part 'reviews_controller.dart';
part 'sections_controller.dart';

@Riverpod(keepAlive: true)
Future<CourseRepository> courseRepository(CourseRepositoryRef ref) async {
  return AgateCourseRepository(
    remote: AgateCourseDataSource(await ref.getDebouncedHttpService()),
  );
}
