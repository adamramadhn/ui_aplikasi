import 'package:flutter/material.dart';

class PersistentWidget extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentWidget({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      width: double.infinity,
      height: 56.0,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: Colors.white,
        elevation: 0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 56.0;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class PersistentHeader2 extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentHeader2({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // margin: const EdgeInsets.all(0),
      color: Colors.white,
      child: Center(child: widget),
    );
  }

  @override
  double get maxExtent => 154.0;

  @override
  double get minExtent => 154.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
