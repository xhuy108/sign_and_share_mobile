import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';
import 'package:sign_and_share_mobile/features/home/views/widgets/community_post_action.dart';

class CommunityPost extends StatelessWidget {
  const CommunityPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundImage: const AssetImage(MediaResource.profileAva),
        ),
        Gap(10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap(10.h),
              Text(
                'SpaceX',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppPalette.textPrimary,
                ),
              ),
              Gap(4.h),
              Text(
                'Last online 2 hours ago',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppPalette.textSecondary,
                ),
              ),
              Gap(10.h),
              Container(
                width: double.infinity,
                height: 290.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage(MediaResource.profileAva),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(6.h),
              Row(
                children: [
                  CommunityPostAction(
                    icon: SvgPicture.asset(MediaResource.likeIcon),
                    count: '24',
                    onPressed: () {},
                  ),
                  Gap(20.w),
                  CommunityPostAction(
                    icon: SvgPicture.asset(MediaResource.commentIcon),
                    count: '123',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
