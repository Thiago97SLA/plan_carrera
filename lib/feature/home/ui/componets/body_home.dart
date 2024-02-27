import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/feature/home/ui/componets/calories_component.dart';
import 'package:plancarrera/feature/home/ui/componets/heart_rate_component.dart';
import 'package:plancarrera/feature/home/ui/componets/steps_component.dart';
import 'package:plancarrera/feature/home/ui/componets/water_component.dart';
import 'package:plancarrera/ui/utils/font.dart';
import 'package:plancarrera/ui/utils/palette.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    required this.userInfo,
    super.key,
  });

  final UserModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hi, ',
              style: FontConstants.heading2
                  .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
            ),
            Text(
              userInfo.name,
              style: FontConstants.heading2.copyWith(color: Palette.nuetral),
            )
          ],
        ),
        Text(
          'Your goal is on its way to you!',
          style: FontConstants.body1.copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        StepsComponent(userInfo: userInfo),
        CaloriesComponent(userInfo: userInfo),
        Flexible(
          child: Row(
            children: [
              WaterComponent(userInfo: userInfo),
              const SizedBox(
                width: 20,
              ),
              HeartRateComponent(userInfo: userInfo)
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
