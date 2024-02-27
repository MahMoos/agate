import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/api/api.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/http/http_service.dart';
import '../../data/data_sources/agate_course_data_source.dart';
import '../../data/repositories/agate_course_repository.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/course_repository.dart';
import '../../domain/use_cases/use_cases.dart';

part 'controllers.g.dart';

part 'course_controller.dart';

part 'lectures_controller.dart';

part 'sections_controller.dart';

@Riverpod(keepAlive: true)
CourseRepository courseRepository(CourseRepositoryRef ref) {
  return AgateCourseRepository(
    remote: AgateCourseDataSource(ref.watch(httpServiceProvider)),
  );
}

void handleSubscriptionException(BuildContext context, Exception e) {
  if (e.toString().contains('wallet') || e.toString().contains('balance')) {
    context.showSnackBar(
      SnackBar(
        content: Text(context.strings.walletEmpty),
        action: SnackBarAction(
          label: context.strings.deposit,
          onPressed: () {},
        ),
      ),
    );
  } else {
    context.showSnackBarMessage(
      context.strings.errorOccurred,
    );
  }
}
