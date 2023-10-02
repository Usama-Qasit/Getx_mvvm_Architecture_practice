

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/color/app_color.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({Key? key,
    this.buttonColor =  AppColor.primaryButtonColor,
    this.textColor =  AppColor.primaryTextColor,
    this.loading = false,
    this.height = 60,
    this.width = 50,
    required this.title,
  required this.onPress}) : super(key: key);
  final bool loading;
  final String title;
  final double height,width;
  final VoidCallback onPress;
  final textColor,buttonColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.primaryButtonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: loading ? Center(child: CircularProgressIndicator()) :
            Center(child: Text(title),),
      ),
    );
  }
}


