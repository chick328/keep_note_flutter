import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:keep_note/presentation/ui/common/paging/app_paging_state.dart';

class AppPagingSliverList<T> extends StatelessWidget {
  const AppPagingSliverList({
    super.key,
    required this.state,
    required this.onFetchNextPage,
    required this.itemContent,
    required this.onRetry,
  });

  final AppPagingState<T> state;
  final Function() onFetchNextPage;
  final Function() onRetry;
  final Widget Function(BuildContext context, T item, int index) itemContent;

  @override
  Widget build(BuildContext context) => PagedSliverList<int, T>(
    state: state,
    fetchNextPage: onFetchNextPage,
    builderDelegate: PagedChildBuilderDelegate(
      itemBuilder: (context, item, index) => itemContent(context, item, index),
      noItemsFoundIndicatorBuilder: (context) => _NoItemIndicator(),
      newPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
      firstPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
      firstPageErrorIndicatorBuilder: (context) =>
          _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
      newPageErrorIndicatorBuilder: (context) =>
          _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
    ),
  );
}

class AppPagingSliverGrid<T> extends StatelessWidget {
  const AppPagingSliverGrid({
    super.key,
    required this.state,
    required this.onFetchNextPage,
    required this.onRetry,
    required this.gridDelegate,
    required this.itemContent,
  });

  final AppPagingState<T> state;
  final Function() onFetchNextPage;
  final Function() onRetry;
  final SliverGridDelegate gridDelegate;
  final Widget Function(BuildContext context, T item, int index) itemContent;

  @override
  Widget build(BuildContext context) {
    return PagedSliverGrid<int, T>(
      state: state,
      fetchNextPage: onFetchNextPage,
      gridDelegate: gridDelegate,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) =>
            itemContent(context, item, index),
        noItemsFoundIndicatorBuilder: (context) => _NoItemIndicator(),
        newPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
        firstPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
        firstPageErrorIndicatorBuilder: (context) =>
            _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
        newPageErrorIndicatorBuilder: (context) =>
            _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
      ),
      showNewPageErrorIndicatorAsGridChild: false,
      showNewPageProgressIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
    );
  }
}

class AppPagingSliverMasonryGrid<T> extends StatelessWidget {
  const AppPagingSliverMasonryGrid({
    super.key,
    required this.state,
    required this.onFetchNextPage,
    required this.onRetry,
    required this.maxCrossAxisExtent,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.itemContent,
  });

  final AppPagingState<T> state;
  final Function() onFetchNextPage;
  final Function() onRetry;
  final Widget Function(BuildContext context, T item, int index) itemContent;
  final double maxCrossAxisExtent;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return PagedSliverMasonryGrid<int, T>.extent(
      state: state,
      fetchNextPage: onFetchNextPage,
      maxCrossAxisExtent: maxCrossAxisExtent,
      crossAxisSpacing: crossAxisSpacing,
      mainAxisSpacing: mainAxisSpacing,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) =>
            itemContent(context, item, index),
        noItemsFoundIndicatorBuilder: (context) => _NoItemIndicator(),
        newPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
        firstPageProgressIndicatorBuilder: (context) => _LoadingIndicator(),
        firstPageErrorIndicatorBuilder: (context) =>
            _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
        newPageErrorIndicatorBuilder: (context) =>
            _ErrorIndicator(errorMsg: state.error.toString(), onRetry: onRetry),
      ),
      showNewPageErrorIndicatorAsGridChild: false,
      showNewPageProgressIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
    );
  }
}

class _ErrorIndicator extends StatelessWidget {
  const _ErrorIndicator({this.errorMsg, this.onRetry});

  final String? errorMsg;
  final Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("something go wrong x_x: $errorMsg"),
        TextButton(onPressed: onRetry, child: Text("Retry")),
      ],
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _NoItemIndicator extends StatelessWidget {
  const _NoItemIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("No Item"));
  }
}
