part of 'models.dart';

@Freezed(toJson: false)
class LectureModel with _$LectureModel {
  const factory LectureModel({
    required String id,
    required String name,
    String? subjectId,
    String? description,
    String? videoUrl,
    String? imageUrl,
    List<LectureFileModel>? files,
    List<McqGameModel>? mcqGames,
    @Default(0) double duration,
    String? completedDuration,
    @Default(false) bool isCompleted,
    @Default(0) double price,
    @Default('IQD') String currency,
    double? discount,
    @Default(false) bool isSubscribed,
    double? rating,
    int? participants,
  }) = _LectureModel;

  factory LectureModel.fromJson(Map<String, dynamic> json) =>
      _$LectureModelFromJson(json);
}

extension LectureModelEx on LectureModel {
  Lecture toEntity() => Lecture(
        id: id,
        title: name,
        description: description,
        imageUrl: imageUrl,
        videoUrl: videoUrl,
        subjectId: subjectId,
        files: files?.map((file) => file.toEntity()).toList(),
        mcqGames: mcqGames?.map((mcqGame) => mcqGame.toEntity()).toList(),
        duration: Duration(milliseconds: (duration * 1000).round()),
        completedDuration: completedDuration?.parseHHMMSSDuration(),
        isCompleted: isCompleted,
        price: price,
        currency: currency,
        discount: discount,
        isSubscribed: isSubscribed,
        rating: rating,
        participants: participants,
      );
}
