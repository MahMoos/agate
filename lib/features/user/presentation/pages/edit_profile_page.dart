part of 'pages.dart';

class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  final GlobalKey formKey = GlobalKey();
  FormGroup? form;

  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authServiceProvider).when(
          data: (auth) {
            form = form ??
                fb.group({
                  'name': [auth.currentUser?.name ?? '', Validators.required],
                  'telegram': [
                    auth.currentUser?.telegramUsername ?? '',
                    Validators.required,
                  ],
                  'address': [
                    auth.currentUser?.address ?? '',
                    Validators.required
                  ],
                  'stage': [
                    auth.currentUser?.stage.name ?? AcademicStage.first.name,
                    Validators.required,
                  ],
                  'photo': FormControl<List<SelectedFile>>(validators: []),
                });
            return Scaffold(
              appBar: AppBar(
                title: Text(context.strings.editProfile),
              ),
              body: SingleChildScrollView(
                child: ReactiveForm(
                  key: formKey,
                  formGroup: form!,
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
                        onSubmitted: (_) => form!.focus('address'),
                      ).paddingSymmetric(vertical: 8, horizontal: 16),
                      ReactiveTextField<String>(
                        formControlName: 'address',
                        decoration: InputDecoration(
                          hintText: context.strings.address,
                          prefixIcon: const Icon(Icons.location_on_outlined),
                        ),
                        onSubmitted: (_) => form!.focus('telegram'),
                      ).paddingSymmetric(vertical: 8, horizontal: 16),
                      ReactiveTextField<String>(
                        formControlName: 'telegram',
                        decoration: InputDecoration(
                          hintText: context.strings.telegramUsername,
                          prefixIcon: const Icon(Icons.telegram),
                        ),
                        onSubmitted: (_) => form!.focus('stage'),
                      ).paddingSymmetric(vertical: 8, horizontal: 16),
                      ReactiveDropdownField<String>(
                        formControlName: 'stage',
                        decoration: InputDecoration(
                          hintText: context.strings.academicStage,
                          prefixIcon: const Icon(Icons.school_outlined),
                          constraints: const BoxConstraints(maxHeight: 50),
                        ),
                        items: AcademicStage.values
                            .map(
                              (stage) => DropdownMenuItem<String>(
                                value: stage.name,
                                child: Text(context.strings.stage(stage.name)),
                              ),
                            )
                            .toList(),
                        onChanged: (_) => form!.focus('photo'),
                      ).paddingSymmetric(vertical: 8, horizontal: 16),
                      ReactiveImagePicker(
                        formControlName: 'photo',
                        decoration: InputDecoration(
                          hintText: context.strings.personalPhoto,
                          prefixIcon:
                              const Icon(Icons.photo_camera_front_outlined),
                        ),
                        preprocessError: (e) async {
                          if (e is PlatformException) {
                            await _photoDenied(context, e.code);
                          }
                        },
                        inputBuilder: (onPressed) => TextButton.icon(
                          onPressed: onPressed,
                          icon: const Icon(Icons.add),
                          label: Text(context.strings.selectPhoto),
                        ),
                      ).paddingSymmetric(vertical: 8, horizontal: 16),
                      if (!_isLoading)
                        ReactiveFormConsumer(
                          builder: (context, form, child) {
                            return ElevatedButton(
                              onPressed:
                                  form.valid ? () => _submit(form.value) : null,
                              child: Text(context.strings.editProfile),
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
              ),
            );
          },
          error: (err, stack) => StatusView.anErrorOccurred(
            action: () => ref.refresh(authServiceProvider.future),
          ),
          loading: StatusView.loading,
        );
  }

  Future<void> _submit(Map<String, Object?> formValue) async {
    TextInput.finishAutofillContext();
    final auth = await ref.watch(authServiceProvider.future);
    final preferences = await ref.watch(preferencesControllerProvider.future);
    try {
      setState(() => _isLoading = true);
      final photos = formValue['photo'] as List<SelectedFile>?;
      final photoId =
          photos != null && photos.isNotEmpty && photos.first.file != null
              ? await ref
                  .watch(preferencesControllerProvider.notifier)
                  .uploadPhoto(photos.first.file!)
              : null;

      await auth.updateProfile(
        User(
          id: auth.currentUser?.id,
          name: formValue['name'] as String?,
          address: formValue['address'] as String?,
          telegramUsername: formValue['telegram'] as String?,
          stage: AcademicStage.values.firstWhere(
            (stage) => stage.name == formValue['stage'] as String?,
          ),
          photoUrl: photoId,
          language: SupportedLanguages.values
              .firstWhere((e) => e.name == preferences.language),
        ),
      );
    } on Exception catch (e) {
      if (mounted) {
        context.showSnackBarMessage(context.strings.errorOccurred);
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _photoDenied(BuildContext context, String errorCode) =>
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: errorCode == 'photo_access_denied'
                ? const Text('Photo access required')
                : const Text('Camera access required'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    'Open settings to allow access',
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text('Settings'),
                onPressed: () async {
                  await AppSettings.openAppSettings();
                  context.pop();
                },
              ),
            ],
          );
        },
      );
}
