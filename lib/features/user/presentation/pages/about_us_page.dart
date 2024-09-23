part of 'pages.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.aboutUs),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Assets.images.logoTransparent.image(
            width: context.width / 2,
          ),
          Text(
            context.strings.appName,
            style: context.headlineLarge,
            textAlign: TextAlign.center,
          ).paddingAll(32),
          Text(
            context.strings.appDescription,
            style: context.bodyLarge,
            textAlign: TextAlign.center,
          ).paddingAll(16),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return Text(
                ref.watch(updaterServiceProvider).when(
                      data: (state) => state.currentVersion,
                      error: (err, st) => '',
                      loading: () => context.strings.checkingForUpdates,
                    ),
                style: context.labelSmall,
                textAlign: TextAlign.center,
              );
            },
          ),
          const Spacer(),
          Text(
            context.strings.copyright(DateTime.now().year),
            style: context.bodySmall,
            textAlign: TextAlign.center,
          ).paddingAll(16),
        ],
      ),
    );
  }
}
