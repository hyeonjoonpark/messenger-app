import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/utils/theme/colors/system_colors.dart';

PreferredSizeWidget? navBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: SystemColors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.people,
              color: SystemColors.black,
            ),
            onPressed: () {
              Get.toNamed("/user/home");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: SystemColors.black,
            ),
            onPressed: () {
              Get.toNamed("/user/search");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.chat,
              color: SystemColors.black,
            ),
            onPressed: () {
              Get.toNamed("/user/chat");
            },
          ),
        ],
      ),
    ),
  );
}
