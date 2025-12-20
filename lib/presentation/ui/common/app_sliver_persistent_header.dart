import 'package:flutter/cupertino.dart';

class AppSliverPersistentHeader extends SliverPersistentHeaderDelegate {
  AppSliverPersistentHeader({
    required this.height,
    required this.widget,
    this.backgroundColor,
  });

  final double height;
  final Widget widget;
  final Color? backgroundColor;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      width: double.infinity,
      height: height,
      color: backgroundColor,
      child: widget,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
