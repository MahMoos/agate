part of 'extensions.dart';

typedef PaginableController<T>
// ignore: invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
    = AsyncNotifierProviderBase<PaginationController<T>, List<T>>;

extension DebounceAndCancelExtension<T> on Ref<T> {
  /// Wait for [duration] (defaults to 500ms), and then return a [HttpService]
  /// which can be used to make a request.
  ///
  /// That client will automatically be closed when the provider is disposed.
  Future<HttpService> getDebouncedHttpService([Duration? duration]) async {
    var didDispose = false;
    onDispose(() => didDispose = true);
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 500));
    if (didDispose) {
      throw Exception('Cancelled');
    }
    final service = await read(httpServiceProvider.future);
    onDispose(service.close);
    return service;
  }
}

// ignore: invalid_use_of_internal_member
mixin PaginationController<T> on AsyncNotifierBase<List<T>> {
  PaginatedParams paginatedParams = const PaginatedParams();

  List<T>? get data {
    try {
      return state.requireValue;
      // ignore: avoid_catching_errors
    } on StateError {
      return null;
    }
  }

  int get pageSize => paginatedParams.pageSize;

  FutureOr<List<T>> loadData();

  Future<List<T>> loadMore() async {
    if (!canLoadMore) return [];
    final oldState = state;
    state = AsyncLoading<List<T>>().copyWithPrevious(oldState);
    late List<T> result;
    state = await AsyncValue.guard<List<T>>(() async {
      paginatedParams = paginatedParams.nextPage();
      result = await loadData();
      return [...state.requireValue, ...result];
    });
    return result;
  }

  bool get canLoadMore {
    if (state.isLoading) return false;
    if (!state.hasValue) return false;
    if (state.requireValue.length % paginatedParams.pageSize != 0) {
      return false;
    }
    return true;
  }
}
