part of 'pages.dart';

class DepartmentPage extends StatefulWidget {
  const DepartmentPage(
    this.id, {
    super.key,
  });

  final String id;

  @override
  State<DepartmentPage> createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Consumer(
        builder: (context, ref, child) {
          final department = ref.watch(
            departmentProvider(widget.id),
          );
          return department.when(
            data: (department) => Scaffold(
              appBar: AppBar(
                title: Text(department.name),
                bottom: TabBar(
                  tabs: [
                    Tab(child: Text(context.strings.subjects)),
                    Tab(child: Text(context.strings.courses)),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  EndlessAnimatedListView(
                    provider: subjectsProvider,
                    builder: (context, subject) => SizedBox(
                      height: 178,
                      child: ShortcutCard(
                        title: subject.name,
                        imageUrl: subject.imageUrl,
                        imageFit: BoxFit.contain,
                        imageAlignment: context.isRTL
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        onTap: () => context.push('/subjects/${subject.id}'),
                      ).paddingSymmetric(horizontal: 12, vertical: 4),
                    ),
                  ),
                  EndlessAnimatedListView(
                    provider: coursesProvider(
                      CoursesParams(divisionIds: [department.id]),
                    ),
                    builder: (context, course) => CourseCard(
                      details: course,
                    ).paddingSymmetric(horizontal: 12, vertical: 4),
                  ),
                ],
              ),
            ),
            error: (err, stack) => StatusView.anErrorOccurred(
              action: () => ref.refresh(departmentProvider(widget.id).future),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
