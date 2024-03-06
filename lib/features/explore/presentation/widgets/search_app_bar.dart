part of 'widgets.dart';

class SearchAppBar extends ConsumerWidget {
  const SearchAppBar({
    super.key,
    this.isInSearch = false,
  });

  final bool isInSearch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final params = ref.watch(coursesParamsProvider);
    // final isInSearch = (params.query?.isNotEmpty ?? false) ||
    //     (params.divisionIds?.isNotEmpty ?? false) ||
    //     (params.subjectIds?.isNotEmpty ?? false) ||
    //     false;
    return SliverAppBar(
      toolbarHeight: 64,
      title: Padding(
        padding: const EdgeInsets.all(16),
        child: Hero(
          tag: 'search',
          child: TextField(
            decoration: InputDecoration(
              hintText: context.strings.search,
              isDense: true,
              contentPadding: EdgeInsets.zero,
              constraints: const BoxConstraints(maxHeight: 48),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              prefixIcon: context.canPop()
                  ? IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back),
                    )
                  : const Icon(Icons.search),
              suffixIcon: Padding(
                padding: isInSearch ? EdgeInsets.zero : const EdgeInsets.all(4),
                child: isInSearch
                    ? IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return FiltersBottomSheet(
                                onFiltersChange: (departments, subjects) =>
                                    debugPrint(
                                  departments.toString() + subjects.toString(),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.filter_list_rounded),
                      )
                    : GestureDetector(
                  onTap: () => context.pushNamed('profile'),
                        child: ref.watch(authServiceProvider).when(
                              data: (data) => UserAvatar(
                                photoUrl: data.currentUser?.photoUrl,
                                name: data.currentUser?.name,
                              ),
                              error: (_, __) => const UserAvatar(),
                              loading: () => const CircularProgressIndicator(),
                            ),
                      ),
              ),
            ),
            autofocus: isInSearch &&
                !(ref.watch(coursesParamsProvider).isFeatured ?? false),
            canRequestFocus: isInSearch,
            onTap: !isInSearch
                ? () {
                    context.pushNamed('search');
                  }
                : null,
            onChanged: (value) =>
                ref.read(coursesParamsProvider.notifier).state =
                    ref.read(coursesParamsProvider.notifier).state.copyWith(
                          // TODO(MahMoos): Change this to query later
                          name: value,
                        ),
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      titleSpacing: 0,
      floating: true,
      snap: true,
    );
  }
}
