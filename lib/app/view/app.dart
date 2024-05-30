part of '../app.dart';

class AuthApp extends StatefulWidget {
  const AuthApp({super.key});

  @override
  State<AuthApp> createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: Listener(
        onPointerDown: (_) {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: const App(),
      ),
    );
  }
}

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AgateRouter.router(ref);
    initApp();
  }

  Future<void> initApp() async {
    await ref.read(preferencesControllerProvider.future);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => context.strings.appName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(
        ref.watch(preferencesControllerProvider).value?.language ?? 'ar',
      ),
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ref.watch(preferencesControllerProvider).value?.themeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
