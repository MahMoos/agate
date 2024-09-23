part of 'pages.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  late FormGroup form;

  bool _isLoading = false;
  late AuthService auth;
  List<Department> universities = [];

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
      'telegram': ['', Validators.required],
      'birthday': [DateTime(DateTime.now().year - 18), Validators.required],
      'governorate': ['', Validators.required],
      'address': ['', Validators.required],
      'university': ['', Validators.required],
      'stage': ['', Validators.required],
      'username': ['', Validators.required, Validators.maxLength(32)],
      'password': ['', Validators.required, Validators.minLength(8)],
      'passwordConfirmation': '',
      'photo': FormControl<List<SelectedFile>>(validators: []),
      'agreement': [false, Validators.requiredTrue],
    }, [
      const MustMatchValidator('password', 'passwordConfirmation', true),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        context.goNamed('login');
      },
      child: Scaffold(
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
            children: <Widget>[
              Text(
                context.strings.register,
                style: context.headlineLarge,
              ).paddingAll(32),
              ref.watch(authServiceProvider).when(
                    data: (data) {
                      auth = data;
                      universities = (auth as AgateAuthService).universites;
                      return ReactiveForm(
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
                                prefixIcon:
                                    const Icon(Icons.perm_identity_rounded),
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
                                AutofillHints.telephoneNumberNational,
                              ],
                              decoration: InputDecoration(
                                hintText: context.strings.phone,
                                prefixIcon: const Icon(Icons.phone_rounded),
                              ),
                              validationMessages: {
                                ValidationMessage.pattern: (error) =>
                                    context.strings.phoneInvalid,
                              },
                              keyboardType: TextInputType.phone,
                              onSubmitted: (_) => form.focus('governorate'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveDropdownField<String>(
                              formControlName: 'governorate',
                              decoration: InputDecoration(
                                labelText: context.strings.governorate,
                                prefixIcon: const Icon(Icons.map_rounded),
                                constraints:
                                    const BoxConstraints(maxHeight: 50),
                              ),
                              items: Governorate.values
                                  .map(
                                    (governorate) => DropdownMenuItem<String>(
                                      value: governorate.name,
                                      child: Text(
                                        context.strings
                                            .governorates(governorate.name),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (_) => form.focus('address'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveTextField<String>(
                              formControlName: 'address',
                              decoration: InputDecoration(
                                hintText: context.strings.address,
                                prefixIcon:
                                    const Icon(Icons.location_on_outlined),
                              ),
                              onSubmitted: (_) => form.focus('telegram'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveTextField<String>(
                              formControlName: 'telegram',
                              decoration: InputDecoration(
                                hintText: context.strings.telegramUsername,
                                prefixIcon: const Icon(Icons.telegram),
                              ),
                              onSubmitted: (_) => form.focus('birthday'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveDatePicker<DateTime>(
                              formControlName: 'birthday',
                              firstDate: DateTime(1920),
                              lastDate: DateTime(DateTime.now().year - 10),
                              helpText: context.strings.birthday,
                              builder: (
                                BuildContext context,
                                ReactiveDatePickerDelegate<DateTime> picker,
                                Widget? child,
                              ) {
                                return ReactiveTextField<DateTime>(
                                  formControl: picker.control,
                                  decoration: InputDecoration(
                                    hintText: context.strings.birthday,
                                    prefixIcon: const Icon(Icons.cake_outlined),
                                    suffixIcon: IconButton(
                                      icon: const Icon(
                                          Icons.calendar_month_outlined),
                                      onPressed: picker.showPicker,
                                    ),
                                  ),
                                  onSubmitted: (_) => form.focus('university'),
                                );
                              },
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveDropdownField<String>(
                              formControlName: 'university',
                              decoration: InputDecoration(
                                labelText: context.strings.university,
                                prefixIcon:
                                    const Icon(Icons.corporate_fare_rounded),
                                constraints:
                                    const BoxConstraints(maxHeight: 50),
                              ),
                              items: universities
                                  .map(
                                    (university) => DropdownMenuItem<String>(
                                      value: university.id,
                                      child: Text(university.name),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (_) => form.focus('stage'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveDropdownField<String>(
                              formControlName: 'stage',
                              decoration: InputDecoration(
                                labelText: context.strings.academicStage,
                                prefixIcon: const Icon(Icons.school_outlined),
                                constraints:
                                    const BoxConstraints(maxHeight: 50),
                              ),
                              items: AcademicStage.values
                                  .map(
                                    (stage) => DropdownMenuItem<String>(
                                      value: stage.name,
                                      child: Text(
                                          context.strings.stage(stage.name)),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (_) => form.focus('username'),
                            ).paddingSymmetric(vertical: 8, horizontal: 16),
                            ReactiveTextField<String>(
                              formControlName: 'username',
                              autofillHints: const [AutofillHints.newUsername],
                              decoration: InputDecoration(
                                hintText: context.strings.username,
                                prefixIcon:
                                    const Icon(Icons.alternate_email_rounded),
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
                              onSubmitted: (_) =>
                                  form.focus('passwordConfirmation'),
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
                            ReactiveCheckboxListTile(
                              formControlName: 'agreement',
                              title: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: context.strings.agreementTileLabel,
                                      style: context.labelLarge,
                                    ),
                                    TextSpan(
                                      text: context.strings.termsAndConditions,
                                      style: context.labelLarge?.copyWith(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          context.pushNamed('terms');
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                            if (!_isLoading)
                              ReactiveFormConsumer(
                                builder: (context, form, child) {
                                  return ElevatedButton(
                                    onPressed: form.valid ? _submit : null,
                                    child: Text(context.strings.register),
                                  ).paddingAll(16);
                                },
                              )
                            else
                              const LinearProgressIndicator(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                minHeight: 9,
                              ).paddingSymmetric(vertical: 36, horizontal: 24),
                          ],
                        ),
                      );
                    },
                    error: (err, st) => StatusView.anErrorOccurred(
                      action: () => ref.refresh(authServiceProvider),
                    ),
                    loading: StatusView.loading,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(context.strings.haveAccount),
                  TextButton(
                    onPressed: () => context.goNamed('login'),
                    child: Text(context.strings.login),
                  ),
                ],
              ).paddingAll(16),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    TextInput.finishAutofillContext();
    final preferences = await ref.watch(preferencesControllerProvider.future);
    try {
      setState(() => _isLoading = true);
      await auth.register(
        User(
          name: form.control('name').value as String,
          username: form.control('username').value as String,
          email: form.control('email').value as String,
          phoneNumber: form.control('phone').value as String,
          password: form.control('password').value as String,
          address: form.control('address').value as String,
          telegramUsername: form.control('telegram').value as String,
          birthday: form.control('birthday').value as DateTime,
          universityId: form.control('university').value as String,
          governorate: Governorate.values.firstWhere(
            (governorate) =>
                governorate.name == form.control('governorate').value as String,
          ),
          stage: AcademicStage.values.firstWhere(
            (stage) => stage.name == form.control('stage').value as String,
          ),
          language: SupportedLanguages.values
              .firstWhere((e) => e.name == preferences.language),
        ),
      );
      if (mounted) {
        auth.currentUser != null
            ? context.goNamed('home')
            : context.goNamed('login');
      }
    } on Exception {
      if (mounted) {
        context.showSnackBarMessage(context.strings.errorOccurred);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }
}
