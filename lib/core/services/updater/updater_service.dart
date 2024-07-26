import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

part 'updater_service.freezed.dart';
part 'updater_service.g.dart';
part 'updater_state.dart';

@Riverpod(keepAlive: true)
class UpdaterService extends _$UpdaterService {
  late ShorebirdCodePush _codePush;

  @override
  Future<UpdaterState> build() async {
    _codePush = ShorebirdCodePush();
    final packageInfo = await PackageInfo.fromPlatform();
    final patchNumber = await _codePush.currentPatchNumber();
    state = AsyncData(
      UpdaterState(
        currentVersion: '${packageInfo.version}+${packageInfo.buildNumber}'
            '${patchNumber != null ? '-p$patchNumber' : ''}',
      ),
    );
    await checkForUpdates();
    return state.value!;
  }

  Future<void> checkForUpdates() async {
    state = AsyncData(
      state.requireValue.copyWith(status: UpdaterStatus.downloadInProgress),
    );
    try {
      final updateAvailable = await _codePush.isNewPatchAvailableForDownload();
      state = AsyncData(
        state.requireValue.copyWith(
          status: UpdaterStatus.idle,
          updateAvailable: updateAvailable,
        ),
      );
      if (updateAvailable) await _downloadUpdate();
    } catch (error) {
      state =
          AsyncData(state.requireValue.copyWith(status: UpdaterStatus.idle));
    }
  }

  Future<void> _downloadUpdate() async {
    state = AsyncData(
      state.requireValue.copyWith(status: UpdaterStatus.downloadInProgress),
    );
    try {
      await _codePush.downloadUpdateIfAvailable();
    } on Exception {}
    try {
      final isNewPatchReadyToInstall =
          await _codePush.isNewPatchReadyToInstall();
      state = AsyncData(
        state.requireValue.copyWith(
          isNewPatchReadyToInstall: isNewPatchReadyToInstall,
          status: UpdaterStatus.idle,
        ),
      );
    } catch (error) {
      state = AsyncData(
        state.requireValue.copyWith(
          isNewPatchReadyToInstall: false,
          status: UpdaterStatus.idle,
        ),
      );
    }
  }
}
