part of 'updater_service.dart';

enum UpdaterStatus { idle, updateCheckInProgress, downloadInProgress }

@freezed
class UpdaterState with _$UpdaterState {
  const factory UpdaterState({
    @Default(UpdaterStatus.updateCheckInProgress) UpdaterStatus status,
    @Default(false) bool updateAvailable,
    @Default(false) bool isNewPatchReadyToInstall,
    @Default('') String currentVersion,
  }) = _UpdaterState;
}
