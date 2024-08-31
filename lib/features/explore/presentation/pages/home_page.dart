part of 'pages.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        const SearchAppBar(),
        CupertinoSliverRefreshControl(
          onRefresh: () => ref.refresh(homeProvider.future),
        ),
        ref.watch(homeProvider).when(
              data: (data) => SliverToBoxAdapter(
                child: SingleChildScrollView(
                  // delegate: SliverChildListDelegate(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      if (data.slides != null && data.slides!.isNotEmpty)
                        AdSlider(
                          slides: data.slides!,
                        ),
                      if (data.myCourses != null &&
                          data.myCourses!.isNotEmpty) ...[
                        SectionTitle(
                          title: context.strings.myCourses,
                          onPressed: () => context.pushNamed('myCourses'),
                        ),
                        MyCoursesSlider(
                          myCourses: data.myCourses!,
                        ),
                      ],
                      GridView(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 640,
                          mainAxisExtent: 156,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        shrinkWrap: true,
                        padding: const EdgeInsets.fromLTRB(14, 16, 14, 8),
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ShortcutCard(
                            title: context.strings.universities,
                            imageUrl:
                                'https://images.unsplash.com/photo-1604134967494-8a9ed3adea0d?q=80&w=480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            onTap: () => context.pushNamed('departments'),
                          ),
                          ShortcutCard(
                            title: context.strings.library,
                            imageUrl:
                                'https://images.unsplash.com/photo-1521587760476-6c12a4b040da?q=80&w=480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            onTap: () => context.pushNamed('bookCategories'),
                          ),
                          ShortcutCard(
                            title: context.strings.teachers,
                            imageUrl:
                                'https://images.unsplash.com/photo-1559223694-98ed5e272fef?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            onTap: () => context.pushNamed('teachers'),
                          ),
                        ],
                      ),
                      if (data.specialCourses != null &&
                          data.specialCourses!.isNotEmpty) ...[
                        SectionTitle(
                          title: context.strings.specialCourses,
                          onPressed: () {
                            ref.read(coursesParamsProvider.notifier).state =
                                const CoursesParams(isFeatured: true);
                            context.pushNamed('search');
                          },
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 480,
                            mainAxisExtent: 272,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                          ),
                          itemBuilder: (context, index) =>
                              CourseCard(details: data.specialCourses![index]),
                          itemCount: data.specialCourses!.length,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              error: (err, stack) => SliverToBoxAdapter(
                child: StatusView.anErrorOccurred(
                  action: () => ref.refresh(homeProvider.future),
                ),
              ),
              loading: () => const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
      ],
    );
  }
}
