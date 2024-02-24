import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widgets/widgets.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/auth/auth_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../controllers/controllers.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authServiceProvider);
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: ref.watch(preferencesControllerProvider).when(
              data: (data) => SingleChildScrollView(
                child: Column(
                  children: [
                    UserAvatar(
                      size: 72,
                      photoUrl: auth.currentUser?.photoUrl,
                      name: auth.currentUser?.name,
                    ).paddingAll(16),
                    Text(
                      auth.currentUser?.name ?? '',
                      style: context.titleLarge,
                    ),
                    SegmentedButton<ThemeMode>(
                      segments: [
                        ButtonSegment(
                          value: ThemeMode.light,
                          icon: const Icon(Icons.light_mode),
                          label: Text(context.strings.light),
                        ),
                        ButtonSegment(
                          value: ThemeMode.dark,
                          icon: const Icon(Icons.dark_mode),
                          label: Text(context.strings.dark),
                        ),
                      ],
                      selected: <ThemeMode>{
                        data.themeMode,
                      },
                      onSelectionChanged: (values) {
                        setState(() {});
                        ref
                            .read(preferencesControllerProvider.notifier)
                            .setPreferences(
                              Preferences(
                                themeMode: values.first,
                                language: data.language,
                              ),
                            );
                      },
                    ).paddingAll(16),
                    SegmentedButton<String>(
                      selected: <String>{data.language},
                      onSelectionChanged: (values) {
                        setState(() {});
                        ref
                            .read(preferencesControllerProvider.notifier)
                            .setPreferences(
                              Preferences(
                                themeMode: data.themeMode,
                                language: values.first,
                              ),
                            );
                      },
                      segments: [
                        for (final locale in context
                            .findAncestorWidgetOfExactType<MaterialApp>()!
                            .supportedLocales)
                          ButtonSegment(
                            value: locale.languageCode,
                            label: FittedBox(
                              child: Text(
                                context.strings
                                    .selectedLanguage(locale.languageCode),
                              ),
                            ),
                          ),
                      ],
                    ).paddingAll(16),
                    ElevatedButton(
                      onPressed: auth.signOut,
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      child: Text(
                        context.strings.signOut,
                        style:
                            context.labelMedium!.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              error: (err, stack) => StatusView.anErrorOccurred(
                action: () => ref.refresh(preferencesControllerProvider.future),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
