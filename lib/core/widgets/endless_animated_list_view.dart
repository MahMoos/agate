part of 'widgets.dart';

class EndlessAnimatedListView<T> extends ConsumerStatefulWidget {
  const EndlessAnimatedListView({
    required this.provider,
    required this.itemBuilder,
    this.sliverAppBar,
    this.scrollController,
    this.noItemsView = const StatusView.noResults(),
    this.loadingView = const StatusView.loading(),
    this.loadingMore = const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: StatusView.loading(),
    ),
    this.errorBuilder,
    this.loadingMoreErrorBuilder,
    this.endOfItemsWidget,
    this.persistentFooterButtons,
    super.key,
  });

  final PaginableController<T> provider;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget? sliverAppBar;
  final ScrollController? scrollController;
  final Widget noItemsView;
  final Widget loadingView;
  final Widget loadingMore;
  final Widget Function(BuildContext, Object error, StackTrace)? errorBuilder;
  final Widget Function(BuildContext, Object error, StackTrace)?
      loadingMoreErrorBuilder;
  final Widget? endOfItemsWidget;
  final List<Widget>? persistentFooterButtons;

  @override
  ConsumerState<EndlessAnimatedListView<T>> createState() =>
      _EndlessAnimatedListViewState();
}

class _EndlessAnimatedListViewState<T>
    extends ConsumerState<EndlessAnimatedListView<T>>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;
  final GlobalKey<SliverAnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
    _animationController = AnimationController(
      duration: 500.milliseconds,
      vsync: this,
    );
    _animationController.forward();
    _scrollController.addListener(() {
      if (ref.read(widget.provider.notifier).canLoadMore &&
          _scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 64) {
        final currentIndex =
            ref.read(widget.provider.notifier).data?.length ?? 0;
        _listKey.currentState?.insertItem(currentIndex);
        ref.read(widget.provider.notifier).loadMore().then(
          (value) {
            _listKey.currentState?.removeItem(
              currentIndex,
              (context, animation) => FadeTransition(
                opacity: animation,
                child: widget.loadingMore,
              ),
            );
            _listKey.currentState?.insertAllItems(currentIndex, value.length);
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(widget.provider);
    final notifier = ref.read(widget.provider.notifier);
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          if (widget.sliverAppBar != null) widget.sliverAppBar!,
          CupertinoSliverRefreshControl(
            onRefresh: () => ref.refresh(widget.provider.future),
          ),
          controller.when(
            data: (data) => data.isNotEmpty
                ? SliverAnimatedList(
                    key: _listKey,
                    initialItemCount: data.length +
                        (controller.isLoading ||
                                controller.hasError ||
                                (!notifier.canLoadMore &&
                                    widget.endOfItemsWidget != null)
                            ? 1
                            : 0),
                    itemBuilder: (
                      BuildContext context,
                      int index,
                      Animation<double> animation,
                    ) {
                      if (data.length == index) {
                        if (controller.isLoading) {
                          return widget.loadingMore;
                        }
                        if (controller.hasError) {
                          return widget.loadingMoreErrorBuilder?.call(
                                context,
                                controller.error!,
                                controller.stackTrace!,
                              ) ??
                              Center(
                                child: Text(context.strings.errorOccurred),
                              );
                        }
                        if (!notifier.canLoadMore &&
                            widget.endOfItemsWidget != null) {
                          return widget.endOfItemsWidget!;
                        }
                      }
                      return SlideTransition(
                        key: Key(index.toString()),
                        position: Tween(
                          begin: Offset(-0.2 * index, 0),
                          end: Offset.zero,
                        ).animate(
                          CurvedAnimation(
                            parent: _animationController,
                            curve: Curves.decelerate,
                          ),
                        ),
                        child: widget.itemBuilder(context, data[index]),
                      );
                    },
                  )
                : SliverToBoxAdapter(
                    child: widget.noItemsView,
                  ),
            error: (err, stack) => SliverToBoxAdapter(
              child: widget.errorBuilder?.call(context, err, stack) ??
                  StatusView.anErrorOccurred(
                    action: () => ref.refresh(widget.provider.future),
                  ),
            ),
            loading: () => SliverFillRemaining(
              hasScrollBody: false,
              child: widget.loadingView,
            ),
          ),
        ],
      ),
      persistentFooterButtons: widget.persistentFooterButtons,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
