import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

final class AppPagingState<T> extends PagingStateBase<int, T> {
  AppPagingState({
    super.pages,
    super.keys,
    super.error,
    super.hasNextPage,
    super.isLoading,
  });

  @override
  AppPagingState<T> copyWith({
    Defaulted<List<List<T>>?>? pages = const Omit(),
    Defaulted<List<int>?>? keys = const Omit(),
    Defaulted<Object?>? error = const Omit(),
    Defaulted<bool>? hasNextPage = const Omit(),
    Defaulted<bool>? isLoading = const Omit(),
  }) =>
      AppPagingState<T>(
        pages: pages is Omit ? this.pages : pages as List<List<T>>?,
        keys: keys is Omit ? this.keys : keys as List<int>?,
        error: error is Omit ? this.error : error,
        hasNextPage:
        hasNextPage is Omit ? this.hasNextPage : hasNextPage as bool,
        isLoading: isLoading is Omit ? this.isLoading : isLoading as bool,
      );

  @override
  AppPagingState<T> reset() => AppPagingState<T>(
    pages: null,
    keys: null,
    error: null,
    hasNextPage: true,
    isLoading: false,
  );
}
