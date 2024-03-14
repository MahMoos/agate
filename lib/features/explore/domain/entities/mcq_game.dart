part of 'entities.dart';

@freezed
class McqGame with _$McqGame {
  const factory McqGame({
    required String id,
    required String question,
    required int correctAnswerId,
    required List<McqAnswer> answerOptions,
    String? subjectId,
    int? rate,
  }) = _McqGame;
}

@freezed
class McqAnswer with _$McqAnswer {
  const factory McqAnswer({
    required int id,
    required String text,
  }) = _McqAnswer;
}
