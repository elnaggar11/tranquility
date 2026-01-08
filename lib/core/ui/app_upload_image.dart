import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_image.dart';

class AppUploadImage extends StatelessWidget {
  const AppUploadImage({
    super.key,
    this.isEditProfile = false,
    this.isDrawer = false,
  });
  final bool isEditProfile;
  final bool isDrawer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xff000000).withValues(alpha: .1),
            radius: 75.r,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: isEditProfile ? 75.r : 30.r,
              child: AppImage(
                image: isEditProfile
                    ? 'drawer_profile.jpg'
                    : 'image_broken.svg',
                color: isEditProfile ? null : Colors.white,
              ),
            ),
          ),
          isDrawer
              ? SizedBox.shrink()
              : Positioned(
                  bottom: 2,
                  right: 2,
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundColor: Color(0xff284243),
                    child: IconButton(
                      onPressed: () {},
                      icon: AppImage(
                        image: isEditProfile
                            ? 'edit_profile.svg'
                            : 'add_icon.svg',
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
