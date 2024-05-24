import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';

class CommunityPostAction extends StatelessWidget {
  const CommunityPostAction({
    super.key,
    required this.icon,
    required this.count,
    this.onPressed,
  });

  final Widget icon;
  final String count;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
        Gap(2.w),
        Text(
          count,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppPalette.textPrimary,
          ),
        ),
      ],
    );
  }
}
