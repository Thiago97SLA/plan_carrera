import 'package:flutter/material.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/ui/utils/font.dart';
import 'package:plancarrera/ui/utils/image_constats.dart';
import 'package:plancarrera/ui/utils/palette.dart';

class WaterComponent extends StatelessWidget {
  const WaterComponent({
    super.key,
    required this.userInfo,
  });

  final UserModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Palette.tertiary,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Palette.backgraound,
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
                child: const Icon(Icons.accessibility_outlined, color: Palette.nuetral),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Water',
                    style: FontConstants.body1
                        .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        '${userInfo.waterCounter} ',
                        style: FontConstants.heading3
                            .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '/ ${userInfo.waterGoal}',
                        style: FontConstants.heading3
                            .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
          SizedBox(height: 100, child: Image.asset(ImagenConstants.imgproce))
        ],
      ),
    ));
  }
}
