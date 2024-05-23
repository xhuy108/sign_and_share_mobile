import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';
import 'package:sign_and_share_mobile/features/home/views/widgets/app_search_bar.dart';
import 'package:sign_and_share_mobile/features/home/views/widgets/culture_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 12.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundImage:
                          const AssetImage(MediaResource.profileAva),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset(MediaResource.notificationIcon),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(MediaResource.settingIcon),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(20.h),
                Text(
                  'Hi Friend,',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppPalette.textPrimary,
                  ),
                ),
                Gap(10.h),
                Text(
                  'Explore the world\naround you!',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppPalette.textPrimary,
                  ),
                ),
                Gap(20.h),
                AppSearchBar(
                  controller: _searchController,
                  onChanged: (value) {},
                ),
                Gap(20.h),
                Row(
                  children: [
                    Text(
                      'Popular Culture Share',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: AppPalette.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppPalette.hintText,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(14.h),
                SizedBox(
                  height: 350.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => const CultureCard(),
                    separatorBuilder: (context, index) => Gap(20.w),
                  ),
                ),
                Gap(20.h),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
