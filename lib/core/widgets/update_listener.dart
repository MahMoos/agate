part of 'widgets.dart';

class UpdateListener extends ConsumerWidget {
  const UpdateListener({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(updaterServiceProvider).when(
          data: (state) {
            if (state.isNewPatchReadyToInstall) {
              ScaffoldMessenger.of(context)
                ..hideCurrentMaterialBanner()
                ..showMaterialBanner(
                  MaterialBanner(
                    content: Text(context.strings.updateAvailableMsg),
                    actions: [
                      TextButton(
                        onPressed: Restart.restartApp,
                        child: Text(context.strings.restartNow),
                      ),
                    ],
                  ),
                );
            }
            return child;
          },
          error: (err, st) => child,
          loading: () => child,
        );
  }
}
