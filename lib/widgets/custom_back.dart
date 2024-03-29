import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

class CustomDrawerCloseButton extends StatelessWidget {
  // const CustomDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.arrow_back,
        color: mainBlackColor,
        size: 40,
      ),
    );
  }
}
