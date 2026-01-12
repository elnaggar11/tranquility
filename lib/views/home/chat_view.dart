import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranquility/core/ui/appbar.dart';
import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: 'About work',
        isCenterTitle: true,
        isMenu: true,
        menuTap: () {},
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.r),
        reverse: true,
        children: [
          BubbleChat(
            message:
                'I\'m sorry to hear that you\'re feeling upset. If you\'d like, you can share what\'s on your mind, and I\'m here to listen and offer support or guidance if you need it. Remember, it\'s okay to feel upset sometimes, and it\'s important to take care of yourself.',
          ),
          SizedBox(height: 16.h),
          BubbleChat(message: 'I feel upset', isMyMessage: true),
          SizedBox(height: 16.h),
          BubbleChat(
            message:
                'Hello! I\'m just a computer program, so I don\'t have feelings in the same way humans do, but I\'m here and ready to assist you. How can I help you today?',
          ),
          SizedBox(height: 16.h),

          BubbleChat(message: 'Hello How are you?', isMyMessage: true),
        ],
      ),
      bottomNavigationBar: _ChatNavgatiorBar(),
    );
  }
}

class _ChatNavgatiorBar extends StatelessWidget {
  const _ChatNavgatiorBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Row(
        children: [
          Expanded(child: AppInput(hintText: 'write your message')),
          SizedBox(width: 14.w),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.r),
            child: CircleAvatar(
              backgroundColor: Color(0xff284243),
              radius: 25.r,
              child: IconButton(
                onPressed: () {},
                icon: AppImage(image: 'send_message.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BubbleChat extends StatelessWidget {
  const BubbleChat({
    super.key,
    this.isMyMessage = false,
    required this.message,
  });
  final bool isMyMessage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: isMyMessage
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        if (isMyMessage == false)
          Padding(
            padding: EdgeInsets.only(right: 10.r),
            child: CircleAvatar(child: AppImage(image: 'robot.jpg')),
          ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .7,
          ),
          child: Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: isMyMessage
                  ? Color(0xff284243)
                  : Color(0xff284243).withValues(alpha: .1),
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isMyMessage ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
