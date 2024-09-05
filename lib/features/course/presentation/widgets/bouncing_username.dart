part of 'widgets.dart';

class BouncingUsername extends ConsumerStatefulWidget {
  const BouncingUsername({super.key, this.isFullscreen = false});

  final bool isFullscreen;
  @override
  ConsumerState<BouncingUsername> createState() => _BouncingUsernameState();
}

class _BouncingUsernameState extends ConsumerState<BouncingUsername> {
  Random random = Random();
  Color textColor = Colors.black;
  double textWidth = 128;
  double textHeight = 16;
  double x = 0;
  double y = 0;
  double dx = 32;
  double dy = 32;
  final duration = 512.milliseconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() {
    timer = Timer.periodic(duration, (timer) {
      final screenWidth = context.width;
      final screenHeight =
          widget.isFullscreen ? context.height : context.height / 2;
      x += dx;
      y += dy;

      if (x + textWidth >= screenWidth) {
        dx = -dx;
        x = screenWidth - textWidth;
      } else if (x <= 0) {
        dx = -dx;
        x = 0;
      }

      if (y + textHeight >= screenHeight) {
        dy = -dy;
        y = screenHeight - textHeight;
      } else if (y <= 0) {
        dy = -dy;
        y = 0;
      }
      pickColor();

      setState(() {});
    });
  }

  void pickColor() {
    final r = random.nextInt(255);
    final g = random.nextInt(255);
    final b = random.nextInt(255);
    textColor = Color.fromRGBO(r, g, b, 1);
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authServiceProvider).when(
          data: (data) {
            return Positioned.fill(
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: duration,
                    left: x,
                    top: y,
                    child: SizedBox(
                      width: textWidth,
                      height: textHeight,
                      child: Text(
                        data.currentUser?.username ??
                            data.currentUser?.email ??
                            data.currentUser?.phoneNumber ??
                            data.currentUser?.name ??
                            'user',
                        style:
                            context.displayMedium?.copyWith(color: textColor),
                        textDirection: TextDirection.ltr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (e, st) => nil,
          loading: () => nil,
        );
  }
}
