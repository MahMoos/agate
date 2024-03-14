part of 'models.dart';

@freezed
class McqGameModel with _$McqGameModel {
  const factory McqGameModel({
    required String id,
    required String question,
    required int correctAnswerId,
    required List<McqAnswerModel> answerOptions,
    String? subjectId,
    int? rate,
  }) = _McqGameModel;

  factory McqGameModel.fromJson(Map<String, dynamic> json) =>
      _$McqGameModelFromJson(json);
}

extension McqGameModelEx on McqGameModel {
  McqGame toEntity() => McqGame(
        id: id,
        question: question,
        correctAnswerId: correctAnswerId,
        answerOptions: answerOptions.map((e) => e.toEntity()).toList(),
        subjectId: subjectId,
        rate: rate,
      );
}

@freezed
class McqAnswerModel with _$McqAnswerModel {
  const factory McqAnswerModel({
    required int id,
    required String text,
  }) = _McqAnswerModel;

  factory McqAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$McqAnswerModelFromJson(json);
}

extension McqAnswerModelEx on McqAnswerModel {
  McqAnswer toEntity() => McqAnswer(id: id, text: text);
}
