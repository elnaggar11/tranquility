import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/app_image.dart';
import 'package:tranquility/core/ui/appbar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(isDrawer: true, title: 'Chats'),
      body: _Item(),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 52.h,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Color(0x2842431A),
              border: Border.all(),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('About Work'), Text('10/12/2021')],
              ),
            ),
          ),
        ),
        AppImage(image: 'delete.svg'),
      ],
    );
  }
}
