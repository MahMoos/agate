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
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                    decoration: InputDecoration(
                      hintText: context.strings.username,
                      prefixIcon: const Icon(Icons.alternate_email_rounded),
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
            _forgotPassword(context),
            _signup(context),
          ],
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final auth = await ref.watch(authServiceProvider.future);
    try {
      setState(() => _isLoading = true);
      await auth.signInWithCredentials(
        form.control('username').value as String,
        form.control('password').value as String,
      );
    } on Exception {
      if (mounted) {
        context.showSnackBarMessage(context.strings.errorOccurred);
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
