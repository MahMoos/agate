part of '../app.dart';

class AgateApp extends StatefulWidget {
  const AgateApp({super.key});

  @override
  State<AgateApp> createState() => _AgateAppState();
}

class _AgateAppState extends State<AgateApp> {
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

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  late GoRouter _router;
  final _noScreenshot = NoScreenshot.instance;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _noScreenshot.screenshotOff();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _router = AgateRouter.router(ref);
    initApp();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> initApp() async {
    await ref.read(preferencesControllerProvider.future);
    await ref.read(authServiceProvider.future);
  }

  @override
  Widget build(BuildContext context) {
    final prefsProvider = ref.watch(preferencesControllerProvider);
    final isLight = prefsProvider.value != null &&
            prefsProvider.requireValue.themeMode != ThemeMode.system
        ? prefsProvider.requireValue.themeMode == ThemeMode.light
        : Theme.of(context).brightness == Brightness.light;
    return MaterialApp.router(
      onGenerateTitle: (context) => context.strings.appName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(
        ref.watch(preferencesControllerProvider).value?.language ?? 'ar',
      ),
      builder: (context, child) => UpdateListener(
        child: Stack(
          children: [
            ColoredBox(
              color: isLight
                  ? AppTheme.light().scaffoldBackgroundColor
                  : AppTheme.dark().scaffoldBackgroundColor,
              child: Center(
                child: Assets.images.logoTransparent
                    .image(width: context.width / 3),
              ),
            ),
            if (child != null) child,
          ],
        ),
      ),
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ref.watch(preferencesControllerProvider).value?.themeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
