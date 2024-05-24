import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';
import 'package:sign_and_share_mobile/features/learning/views/widgets/function_card.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75.h,
          backgroundColor: AppPalette.background,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "Learning",
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FunctionCard(
                  height: 160.h,
                  label: "3d Dictionary",
                  background: MediaResource.funtion1,
                ),
                FunctionCard(
                  height: 280.h,
                  label: "Games",
                  background: MediaResource.funtion3,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FunctionCard(
                  height: 280.h,
                  label: "Vocabulary",
                  background: MediaResource.funtion2,
                ),
                FunctionCard(
                  height: 160.h,
                  label: "Games",
                  background: MediaResource.funtion4,
                ),
              ],
            )
          ],
        ));
  }
}
