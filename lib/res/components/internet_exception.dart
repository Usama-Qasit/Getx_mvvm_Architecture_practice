

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/res/color/app_color.dart';
import 'package:getx_mvvm/res/components/round_button.dart';

class InternetExeptionWidget extends StatefulWidget {
  const InternetExeptionWidget({Key? key}) : super(key: key);

  @override
  State<InternetExeptionWidget> createState() => _InternetExeptionWidgetState();
}

class _InternetExeptionWidgetState extends State<InternetExeptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: [
            Icon(Icons.cloud_off,color: AppColor.blueColor,),
            Text('internet_exception'.tr),
            SizedBox(height:10,),
            RoundButton(title: 'Retry',width: 180, onPress: (){})
          ],
        ),
      ),
    );
  }
}
