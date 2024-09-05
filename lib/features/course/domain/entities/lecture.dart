part of 'entities.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    required String id,
    required String title,
    String? subjectId,
    String? description,
    String? videoUrl,
    String? imageUrl,
    List<LectureFile>? files,
    List<McqGame>? mcqGames,
    Duration? duration,
    Duration? completedDuration,
    @Default(false) bool isCompleted,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    @Default(false) bool isSubscribed,
    double? rating,
    int? participants,
  }) = _Lecture;
}
