part of 'pages.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  late FormGroup form;

  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    form = fb.group({
      'name': ['', Validators.required],
      'email': ['', Validators.email],
      'phone': [
        '',
        Validators.required,
        Validators.pattern(r'^(((?:\+|00)964)|(0)*)7\d{9}'),
      ],
      'username': ['', Validators.required, Validators.maxLength(16)],
      'password': ['', Validators.required, Validators.minLength(8)],
      'passwordConfirmation': '',
    }, [
      const MustMatchValidator('password', 'passwordConfirmation', true),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          children: <Widget>[
            Text(
              context.strings.register,
              style: context.headlineLarge,
            ).paddingAll(32),
            ReactiveForm(
              formGroup: form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ReactiveTextField<String>(
                    formControlName: 'name',
                    autofillHints: const [AutofillHints.name],
                    decoration: InputDecoration(
                      hintText: context.strings.fullName,
                      prefixIcon: const Icon(Icons.perm_identity_rounded),
                    ),
                    onSubmitted: (_) => form.focus('email'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'email',
                    autofillHints: const [AutofillHints.email],
                    decoration: InputDecoration(
                      hintText: context.strings.email,
                      prefixIcon: const Icon(Icons.email_rounded),
                    ),
                    onSubmitted: (_) => form.focus('phone'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'phone',
                    autofillHints: const [
                      AutofillHints.telephoneNumberNational
                    ],
                    decoration: InputDecoration(
                      hintText: context.strings.phone,
                      prefixIcon: const Icon(Icons.phone_rounded),
                    ),
                    keyboardType: TextInputType.phone,
                    onSubmitted: (_) => form.focus('username'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'username',
                    autofillHints: const [AutofillHints.newUsername],
                    decoration: InputDecoration(
                      hintText: context.strings.username,
                      prefixIcon: const Icon(Icons.alternate_email_rounded),
                    ),
                    onSubmitted: (_) => form.focus('password'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'password',
                    autofillHints: const [AutofillHints.newPassword],
                    decoration: InputDecoration(
                      hintText: context.strings.password,
                      prefixIcon: const Icon(Icons.password_rounded),
                    ),
                    obscureText: true,
                    onSubmitted: (_) => form.focus('passwordConfirmation'),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'passwordConfirmation',
                    autofillHints: const [AutofillHints.password],
                    decoration: InputDecoration(
                      hintText: context.strings.confirmPassword,
                      prefixIcon: const Icon(Icons.password_rounded),
                    ),
                    obscureText: true,
                    onSubmitted: (_) => form.valid ? _submit() : null,
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  if (!_isLoading)
                    ReactiveFormConsumer(
                      builder: (context, form, child) {
                        return ElevatedButton(
                          onPressed: form.valid ? _submit : null,
                          child: Text(
                            context.strings.register,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(context.strings.haveAccount),
                TextButton(
                  onPressed: () => context.goNamed('login'),
                  child: Text(
                    context.strings.login,
                  ),
                ),
              ],
            ).paddingAll(16),
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
      await auth.register(
        User(
          name: form.control('name').value as String,
          username: form.control('username').value as String,
          email: form.control('email').value as String,
          phoneNumber: form.control('phone').value as String,
          password: form.control('password').value as String,
        ),
      );
      if (mounted) context.goNamed('home');
    } on Exception {
      if (mounted) {
        context.showSnackBarMessage(context.strings.errorOccurred);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
