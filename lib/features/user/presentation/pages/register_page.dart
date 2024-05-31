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
      'username': ['', Validators.required],
      'email': ['', Validators.email],
      'phone': [
        '',
        Validators.required,
        Validators.minLength(11),
        Validators.maxLength(15),
      ],
      'password': ['', Validators.required, Validators.minLength(8)],
      'passwordConfirmation': '',
    }, [
      const MustMatchValidator('password', 'passwordConfirmation', true),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration: InputDecoration(
                      hintText: context.strings.fullName,
                      prefixIcon: const Icon(Icons.perm_identity_rounded),
                    ),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'username',
                    decoration: InputDecoration(
                      hintText: context.strings.username,
                      prefixIcon: const Icon(Icons.alternate_email_rounded),
                    ),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'email',
                    decoration: InputDecoration(
                      hintText: context.strings.email,
                      prefixIcon: const Icon(Icons.email_rounded),
                    ),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'phone',
                    decoration: InputDecoration(
                      hintText: context.strings.phone,
                      prefixIcon: const Icon(Icons.phone_rounded),
                    ),
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'password',
                    decoration: InputDecoration(
                      hintText: context.strings.password,
                      prefixIcon: const Icon(Icons.password_rounded),
                    ),
                    obscureText: true,
                  ).paddingSymmetric(vertical: 8, horizontal: 16),
                  ReactiveTextField<String>(
                    formControlName: 'passwordConfirmation',
                    decoration: InputDecoration(
                      hintText: context.strings.confirmPassword,
                      prefixIcon: const Icon(Icons.password_rounded),
                    ),
                    obscureText: true,
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
    } on Exception {
      if (mounted) {
        context.showSnackBarMessage(context.strings.errorOccurred);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
