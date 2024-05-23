import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:sign_and_share_mobile/config/themes/app_pallete.dart';
import 'package:sign_and_share_mobile/config/themes/media_resources.dart';
import 'package:sign_and_share_mobile/features/auth/views/widgets/auth_button.dart';
import 'package:sign_and_share_mobile/features/auth/views/widgets/auth_input_field.dart';
import 'package:sign_and_share_mobile/features/auth/views/widgets/social_button.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppPalette.background,
        backgroundColor: AppPalette.background,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                MediaResource.helpIcon,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  color: AppPalette.textPrimary,
                ),
              ),
              Gap(12.h),
              Text(
                'Enter the email and create password to associate with your account',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppPalette.textPrimary.withOpacity(0.25),
                ),
              ),
              Gap(28.h),
              AuthInputField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              Gap(20.h),
              AuthInputField(
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                obscureText: _obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: SvgPicture.asset(
                    _obscureText
                        ? MediaResource.showPasswordIcon
                        : MediaResource.hidePasswordIcon,
                  ),
                ),
              ),
              Gap(20.h),
              AuthButton(
                title: 'Continue',
                onPressed: () {},
              ),
              Gap(20.h),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppPalette.textPrimary.withOpacity(0.05),
                    ),
                  ),
                  Text(
                    "  Or  ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppPalette.textPrimary.withOpacity(0.25),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppPalette.textPrimary.withOpacity(0.05),
                    ),
                  ),
                ],
              ),
              Gap(20.h),
              SocialButton(
                icon: SvgPicture.asset(
                  MediaResource.googleIcon,
                ),
                title: 'Continue with Google',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
