import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/logic/helper_methods.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/app_upload_image.dart';
import 'package:tranquility/views/home/about_us_view.dart';
import 'package:tranquility/views/home/suggestion_view.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320.w,
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 280.h,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppUploadImage(isDrawer: true, isEditProfile: true),
                SizedBox(height: 16.h),
                Text.rich(
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: Colors.white),
                  TextSpan(
                    children: [
                      TextSpan(text: '  Mohamed\n'),
                      TextSpan(text: '01022370181'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _Item(
            image: 'about_us.svg',
            title: 'About Us',
            onTap: () {
              navigateTo(AboutUsView());
            },
          ),
          _Item(image: 'star.svg', title: 'Rate Our App', onTap: () {}),
          _Item(
            image: 'suggestion.svg',
            title: 'Suggestions',
            onTap: () {
              navigateTo(SuggestionView());
            },
          ),
          _Item(
            image: 'finger.svg',
            title: 'Enable Easy Login',
            isSwitch: true,
          ),
          _Item(image: 'log_out.svg', title: 'Log out', color: Colors.red),
        ],
      ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({
    required this.image,
    required this.title,
    this.isSwitch = false,
    this.color = Colors.black,
    this.onTap,
  });

  final String image, title;
  final bool isSwitch;
  final Color color;
  final void Function()? onTap;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 16.r, right: 16.r, top: 16.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 56.h,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withAlpha(25),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              AppImage(image: widget.image),
              SizedBox(width: 13.w),
              Text(
                widget.title,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: widget.color),
              ),
              Spacer(),
              widget.isSwitch
                  ? Switch(
                      value: isOn,
                      onChanged: (value) {
                        setState(() {
                          isOn = value;
                        });
                      },
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
