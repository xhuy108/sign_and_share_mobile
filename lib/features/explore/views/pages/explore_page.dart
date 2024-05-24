import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';
import 'package:sign_and_share_mobile/features/explore/views/widgets/tab_bar.dart';
import 'package:sign_and_share_mobile/features/home/views/widgets/community_post.dart';
import 'package:sign_and_share_mobile/features/home/views/widgets/culture_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75.h,
        backgroundColor: AppPalette.background,
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Explore",
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: AppPalette.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              MediaResource.notificationIcon,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              MediaResource.settingIcon,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 12.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTabBar(
                    tabController: tabController,
                  ),
                  Gap(20.h),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) =>
                              const CommunityPost(),
                          separatorBuilder: (context, index) => Gap(20.w),
                        ),

                        // second tab bar view widget
                        ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) => CultureCard(
                            width: 345.w,
                          ),
                          separatorBuilder: (context, index) => Gap(20.w),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
