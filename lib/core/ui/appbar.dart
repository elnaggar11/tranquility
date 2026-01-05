import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_image.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key, this.isDrawer = false, this.isMenu = false});
  final bool isDrawer;
  final bool isMenu;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        isMenu
            ? InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(right: 11.r),
                  child: AppImage(image: 'menu.svg'),
                ),
              )
            : SizedBox.shrink(),
      ],
      leading: isDrawer
          ? IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.black),
            )
          : InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppImage(image: 'arrow_back.svg'),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
