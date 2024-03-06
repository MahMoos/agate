import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widgets/widgets.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/auth/auth_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../controllers/controllers.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(authServiceProvider).when(
          data: (auth) => Scaffold(
            appBar: AppBar(
              title: Text(context.strings.profile),
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: ref.watch(preferencesControllerProvider).when(
                    data: (data) => SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UserAvatar(
                                size: 72,
                                photoUrl: auth.currentUser?.photoUrl,
                                name: auth.currentUser?.name,
                              ).paddingAll(16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      auth.currentUser?.name ?? '',
                                      style: context.displayLarge,
                                    ),
                                    Text(
                                      auth.currentUser?.email ?? '',
                                      style: context.labelLarge,
                                    ),
                                  ],
                                ),
                              ).paddingSymmetric(vertical: 24),
                            ],
                          ),
                          ListTile(
                            leading: const Icon(Icons.language_rounded),
                            title: Text(
                              context.strings.language,
                              style: context.titleLarge,
                            ),
                            trailing: Text(
                              data.language == 'en' ? '🇬🇧' : '🇮🇶',
                              style: context.displayMedium,
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(color: context.primaryColor),
                            ),
                            tileColor:
                                context.theme.colorScheme.secondaryContainer,
                            onTap: () => ref
                                .read(preferencesControllerProvider.notifier)
                                .toggleLanguage(),
                          ).paddingSymmetric(horizontal: 16, vertical: 8),
                          ListTile(
                            leading: const Icon(Icons.light_rounded),
                            title: Text(
                              context.strings.brightness,
                              style: context.titleLarge,
                            ),
                            trailing: Icon(
                              data.themeMode == ThemeMode.light
                                  ? Icons.light_mode_rounded
                                  : Icons.dark_mode_rounded,
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(color: context.primaryColor),
                            ),
                            tileColor:
                                context.theme.colorScheme.secondaryContainer,
                            onTap: () => ref
                                .read(preferencesControllerProvider.notifier)
                                .toggleBrightness(),
                          ).paddingSymmetric(horizontal: 16, vertical: 8),
                          ElevatedButton.icon(
                            onPressed: auth.signOut,
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                context.theme.colorScheme.error,
                              ),
                              tapTargetSize: MaterialTapTargetSize.padded,
                            ),
                            label: Text(
                              context.strings.signOut,
                              style: context.titleLarge!
                                  .copyWith(color: Colors.white),
                            ),
                            icon: const Icon(
                              Icons.logout_rounded,
                              color: Colors.white,
                            ),
                          ).paddingSymmetric(horizontal: 16, vertical: 8),
                        ],
                      ),
                    ),
                    error: (err, stack) => StatusView.anErrorOccurred(
                      action: () =>
                          ref.refresh(preferencesControllerProvider.future),
                    ),
                    loading: StatusView.loading,
                  ),
            ),
          ),
          error: (err, stack) => StatusView.anErrorOccurred(
            action: () => ref.refresh(preferencesControllerProvider.future),
          ),
          loading: StatusView.loading,
        );
  }
}
