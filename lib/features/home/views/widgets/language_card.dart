import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, this.onExplore, required this.title});

  final String title;
  final void Function()? onExplore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: AppPalette.background,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: AppPalette.shadow.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 42.r,
            backgroundImage: const AssetImage(MediaResource.profileAva),
          ),
          Gap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppPalette.textPrimary,
                ),
              ),
              Gap(4.h),
              Text(
                'Explore this right now!',
                style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: AppPalette.hintText,
                ),
              ),
              Gap(12.h),
              InkWell(
                onTap: onExplore,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppPalette.primary,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppPalette.background,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
