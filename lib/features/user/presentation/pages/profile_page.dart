part of 'pages.dart';

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
                    data: (data) => Column(
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
                            Column(
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
                                ElevatedButton(
                                  onPressed: () =>
                                      context.pushNamed('editProfile'),
                                  style: const ButtonStyle(
                                    minimumSize: WidgetStatePropertyAll(
                                      Size(98, 32),
                                    ),
                                    maximumSize: WidgetStatePropertyAll(
                                      Size(220, 32),
                                    ),
                                    padding: WidgetStatePropertyAll(
                                      EdgeInsets.symmetric(horizontal: 8),
                                    ),
                                  ),
                                  child: Text(context.strings.editProfile),
                                ),
                              ],
                            ).paddingSymmetric(vertical: 24),
                          ],
                        ),
                        const Divider(indent: 24, endIndent: 24, thickness: 2),
                        StadiumTile(
                          prefixIcon: Icons.wallet_rounded,
                          label: context.strings.wallet,
                          trailing: ref.watch(walletControllerProvider).when(
                                data: (balance) => Text(
                                  balance.toStringFormatted(context),
                                ),
                                error: (_, __) => IconButton(
                                  onPressed: () => ref
                                      .refresh(walletControllerProvider.future),
                                  icon: const Icon(Icons.error_outline_rounded),
                                ),
                                loading: () =>
                                    const CircularProgressIndicator(),
                              ),
                          contentPadding:
                              const EdgeInsetsDirectional.fromSTEB(16, 0, 8, 0),
                          onTap: () => GoRouter.of(context).pushNamed('wallet'),
                        ),
                        const Divider(indent: 24, endIndent: 24, thickness: 2),
                        StadiumTile(
                          prefixIcon: Icons.language_rounded,
                          label: context.strings.language,
                          trailing: Text(
                            data.language == 'en' ? '🇬🇧' : '🇮🇶',
                            style: context.displayMedium,
                          ),
                          onTap: () => ref
                              .read(preferencesControllerProvider.notifier)
                              .toggleLanguage(),
                        ),
                        StadiumTile(
                          prefixIcon: Icons.light_rounded,
                          label: context.strings.brightness,
                          trailing: Icon(
                            data.themeMode == ThemeMode.light
                                ? Icons.light_mode_rounded
                                : Icons.dark_mode_rounded,
                          ),
                          onTap: () => ref
                              .read(preferencesControllerProvider.notifier)
                              .toggleBrightness(),
                        ),
                        const Divider(indent: 24, endIndent: 24, thickness: 2),
                        StadiumTile(
                          prefixIcon: Icons.info_outline_rounded,
                          label: context.strings.aboutUs,
                          trailing: const Icon(Icons.arrow_forward_ios_rounded),
                          onTap: () => context.pushNamed('aboutUs'),
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {
                            auth
                                .signOut()
                                .then((_) => context.goNamed('login'));
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
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
                        ).paddingAll(16),
                      ],
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
