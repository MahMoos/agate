part of 'pages.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late FormGroup form;

  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    form = fb.group(
      {
        'username': ['', Validators.required],
        'password': ['', Validators.required],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => ref
                .read(preferencesControllerProvider.notifier)
                .toggleBrightness(),
            icon: Icon(
              ref.read(preferencesControllerProvider.notifier).themeMode ==
                      ThemeMode.light
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode_rounded,
            ),
          ),
          IconButton(
            onPressed: () => ref
                .read(preferencesControllerProvider.notifier)
                .toggleLanguage(),
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onScaleEnd: (details) {
                context.pushNamed('talker');
              },
              child: Assets.images.logoTransparent.image(height: 320),
            ),
            Text(
              context.strings.welcome,
              style: context.headlineLarge,
            ),
            ReactiveForm(
              formGroup: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ReactiveTextField<String>(
                    formControlName: 'username',
                    autofillHints: const [AutofillHints.username],
                    decoration: InputDecoration(
                      hintText: context.strings.loginText,
                      prefixIcon: const Icon(Icons.alternate_email_rounded),
                    ),
                    onSubmitted: (_) => form.focus('password'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'password',
                    autofillHints: const [AutofillHints.password],
                    decoration: InputDecoration(
                      hintText: context.strings.password,
                      prefixIcon: const Icon(Icons.password_rounded),
                    ),
                    onSubmitted: (_) => form.valid ? _submit() : null,
                    obscureText: true,
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  if (!_isLoading)
                    ReactiveFormConsumer(
                      builder: (context, form, child) {
                        return ElevatedButton(
                          onPressed: form.valid ? _submit : null,
                          child: Text(
                            context.strings.login,
                          ),
                        ).paddingAll(16);
                      },
                    )
                  else
                    const LinearProgressIndicator(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      minHeight: 9,
                    ).paddingSymmetric(vertical: 36, horizontal: 24),
                ],
              ),
            ),
            // _forgotPassword(context),
            _signup(context),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    TextInput.finishAutofillContext();
    final auth = await ref.watch(authServiceProvider.future);
    try {
      setState(() => _isLoading = true);
      await auth.signInWithCredentials(
        (form.control('username').value as String).trim(),
        form.control('password').value as String,
      );
      if (mounted) context.goNamed('home');
    } on Exception catch (e) {
      if (mounted) {
        context.showSnackBarMessage(
          e is HttpException && e.statusCode == 400
              ? e.message?.contains('User is not verified') ?? false
                  ? context.strings.notVerified
                  : context.strings.wrongCredentials
              : context.strings.errorOccurred,
        );
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(context.strings.forgetPassword),
    );
  }

  Widget _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.strings.noAccount),
        TextButton(
          onPressed: () => context.goNamed('register'),
          child: Text(context.strings.register),
        ),
      ],
    );
  }
}
