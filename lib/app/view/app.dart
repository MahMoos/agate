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
        child: Authenticator(
          dialCodeOptions: const DialCodeOptions(defaultDialCode: DialCode.iq),
          totpOptions: const TotpOptions(issuer: 'Qalam Center'),
          authenticatorBuilder:
              (BuildContext context, AuthenticatorState state) {
            switch (state.currentStep) {
              case AuthenticatorStep.signIn:
                return AuthScaffold(
                  state: state,
                  // A prebuilt Sign In form from amplify_authenticator
                  body: SignInForm.custom(
                    fields: [
                      SignInFormField.username(),
                      SignInFormField.password(),
                    ],
                    includeDefaultSocialProviders: false,
                  ),
                  // A custom footer with a button to take the user to sign up
                  footer: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () => state.changeStep(
                          AuthenticatorStep.signUp,
                        ),
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                );
              case AuthenticatorStep.signUp:
                return AuthScaffold(
                  state: state,
                  body: SignUpForm.custom(
                    fields: [
                      SignUpFormField.username(
                        autofillHints: [AutofillHints.email],
                      ),
                      SignUpFormField.password(
                        autofillHints: [AutofillHints.password],
                      ),
                      SignUpFormField.passwordConfirmation(
                        autofillHints: [AutofillHints.password],
                      ),
                      SignUpFormField.custom(
                        required: true,
                        title: 'University',
                        attributeKey:
                            const CognitoUserAttributeKey.custom('university'),
                      ),
                      SignUpFormField.givenName(
                        required: true,
                        autofillHints: [AutofillHints.givenName],
                      ),
                      SignUpFormField.familyName(
                        required: true,
                        autofillHints: [AutofillHints.familyName],
                      ),
                      SignUpFormField.phoneNumber(
                        required: true,
                        autofillHints: [AutofillHints.telephoneNumber],
                      ),
                    ],
                  ),
                  // A custom footer with a button to take the user to sign in
                  footer: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () => state.changeStep(
                          AuthenticatorStep.signIn,
                        ),
                        child: const Text('Sign In'),
                      ),
                    ],
                  ),
                );
              case AuthenticatorStep.confirmSignUp:
                return AuthScaffold(
                  state: state,
                  // A prebuilt Confirm Sign Up form from amplify_authenticator
                  body: ConfirmSignUpForm(),
                );
              case AuthenticatorStep.resetPassword:
                return AuthScaffold(
                  state: state,
                  // A prebuilt Reset Password form from amplify_authenticator
                  body: ResetPasswordForm(),
                );
              case AuthenticatorStep.confirmResetPassword:
                return AuthScaffold(
                  state: state,
                  // A prebuilt Confirm Reset Password form from amplify_authenticator
                  body: const ConfirmResetPasswordForm(),
                );
              case AuthenticatorStep.loading:
                return const StatusView.loading();
              case AuthenticatorStep.onboarding:
              case AuthenticatorStep.confirmSignInCustomAuth:
              case AuthenticatorStep.confirmSignInMfa:
              case AuthenticatorStep.confirmSignInNewPassword:
              case AuthenticatorStep.continueSignInWithMfaSelection:
              case AuthenticatorStep.continueSignInWithTotpSetup:
              case AuthenticatorStep.confirmSignInWithTotpMfaCode:
              case AuthenticatorStep.verifyUser:
              case AuthenticatorStep.confirmVerifyUser:
                return null;
            }
          },
          child: const App(),
        ),
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

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
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
              Padding(
                padding: const EdgeInsets.all(32),
                child: Center(child: Assets.images.logoTransparent.image()),
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
