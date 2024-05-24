import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';

class CustomTabBar extends StatefulWidget {
  final TabController tabController;

  const CustomTabBar({required this.tabController});
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50.h,
      width: 244.w,
      decoration: BoxDecoration(
        color: AppPalette.secondary,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: TabBar(
        controller: widget.tabController,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          color: AppPalette.background,
        ),
        labelColor: AppPalette.textPrimary,
        indicatorPadding: EdgeInsets.all(5.h),
        indicatorSize: TabBarIndicatorSize.tab,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        tabs: [
          Tab(
            child: Text(
              "Community",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Tab(
            child: Text(
              "Culture",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
