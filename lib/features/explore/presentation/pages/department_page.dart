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
    return Consumer(
      builder: (context, ref, child) {
        final department = ref.watch(
          departmentProvider(widget.id),
        );
        return department.when(
          data: (department) {
            if (department.subDepartments != null &&
                department.subDepartments!.isNotEmpty) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(department.name),
                ),
                body: ListView.builder(
                  itemCount: department.subDepartments!.length,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return SizedBox(
                      height: 178,
                      child: ShortcutCard(
                        title: department.subDepartments![index].name,
                        imageUrl: department.subDepartments![index].logoUrl,
                        imageFit: BoxFit.contain,
                        imageAlignment: context.isRTL
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        onTap: () => context.push(
                          '/departments/${department.subDepartments![index].id}',
                        ),
                      ).paddingSymmetric(horizontal: 12, vertical: 4),
                    );
                  },
                ),
              );
            }
            return DepartmentSubjectsView(departmentId: widget.id);
          },
          error: (err, stack) => StatusView.anErrorOccurred(
            action: () => ref.refresh(departmentProvider(widget.id).future),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
