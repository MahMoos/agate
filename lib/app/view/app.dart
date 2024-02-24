part of '../app.dart';

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
    // await ref.read(preferencesControllerProvider.future);
  }

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
        child: Authenticator(
          dialCodeOptions: const DialCodeOptions(defaultDialCode: DialCode.iq),
          totpOptions: const TotpOptions(issuer: 'Qalam Center'),
          // authenticatorBuilder:
          //     (BuildContext context, AuthenticatorState state) {
          //   switch (state.currentStep) {
          //     case AuthenticatorStep.signIn:
          //       return CustomScaffold(
          //         state: state,
          //         // A prebuilt Sign In form from amplify_authenticator
          //         body: SignInForm(),
          //         // A custom footer with a button to take the user to sign up
          //         footer: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             const Text("Don't have an account?"),
          //             TextButton(
          //               onPressed: () => state.changeStep(
          //                 AuthenticatorStep.signUp,
          //               ),
          //               child: const Text('Sign Up'),
          //             ),
          //           ],
          //         ),
          //       );
          //     case AuthenticatorStep.signUp:
          //       return CustomScaffold(
          //         state: state,
          //         // A prebuilt Sign Up form from amplify_authenticator
          //         body: SignUpForm(),
          //         // A custom footer with a button to take the user to sign in
          //         footer: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             const Text('Already have an account?'),
          //             TextButton(
          //               onPressed: () => state.changeStep(
          //                 AuthenticatorStep.signIn,
          //               ),
          //               child: const Text('Sign In'),
          //             ),
          //           ],
          //         ),
          //       );
          //     case AuthenticatorStep.confirmSignUp:
          //       return CustomScaffold(
          //         state: state,
          //         // A prebuilt Confirm Sign Up form from amplify_authenticator
          //         body: ConfirmSignUpForm(),
          //       );
          //     case AuthenticatorStep.resetPassword:
          //       return CustomScaffold(
          //         state: state,
          //         // A prebuilt Reset Password form from amplify_authenticator
          //         body: ResetPasswordForm(),
          //       );
          //     case AuthenticatorStep.confirmResetPassword:
          //       return CustomScaffold(
          //         state: state,
          //         // A prebuilt Confirm Reset Password form from amplify_authenticator
          //         body: const ConfirmResetPasswordForm(),
          //       );
          //     default:
          //       return null;
          //   }
          // },
          child: ref.watch(preferencesControllerProvider).when(
                data: (data) => MaterialApp.router(
                  title: 'Sphare',
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: Locale(
                    data.language,
                    // 'en',
                  ),
                  theme: AppTheme.light(),
                  darkTheme: AppTheme.dark(),
                  themeMode: data.themeMode,
                  debugShowCheckedModeBanner: false,
                  routerConfig: _router,
                ),
                error: (err, stack) => StatusView.anErrorOccurred(
                  action: () =>
                      ref.refresh(preferencesControllerProvider.future),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
        ),
      ),
    );
  }
}

/// A widget that displays a logo, a body, and an optional footer.
class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    required this.state,
    required this.body,
    super.key,
    this.footer,
  });

  final AuthenticatorState state;
  final Widget body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App logo
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Center(child: FlutterLogo(size: 100)),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: body,
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: footer != null ? [footer!] : null,
    );
  }
}
