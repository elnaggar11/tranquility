import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_dialog.dart';
import 'package:tranquility/core/ui/app_image.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  const Appbar({
    super.key,
    this.isDrawer = false,
    this.title = '',
    this.isCenterTitle = false,
    this.isMenu = false,
  });

  final String title;
  final bool isDrawer;
  final bool isCenterTitle;
  final bool isMenu;

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: widget.isCenterTitle ? true : false,
      title: Text(
        widget.title,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        widget.isMenu
            ? PopupMenuButton(
                color: Colors.white,
                icon: AppImage(image: 'menu.svg'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16.r),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AppDialog();
                        },
                      );
                    },
                    child: Row(
                      children: [
                        AppImage(image: 'edit_title.svg'),
                        SizedBox(width: 10.w),
                        Text(
                          'Edit Title',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        AppImage(image: 'delete.svg'),
                        SizedBox(width: 10.w),
                        Text(
                          'delete Title',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: Color(0xffFF0000)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : SizedBox.shrink(),
      ],
      leading: widget.isDrawer
          ? IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
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
}
