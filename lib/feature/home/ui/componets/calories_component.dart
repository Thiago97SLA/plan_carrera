import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/ui/utils/font.dart';
import 'package:plancarrera/ui/utils/palette.dart';

class CaloriesComponent extends StatelessWidget {
  const CaloriesComponent({
    super.key,
    required this.userInfo,
  });

  final UserModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Palette.secundary,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: const Icon(Icons.follow_the_signs_rounded, color: Palette.nuetral),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calories',
                        style: FontConstants.body1
                            .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Text(
                            '${userInfo.caloriesCounter} ',
                            style: FontConstants.heading3
                                .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '/ ${userInfo.caloriesGoal}',
                            style: FontConstants.heading3
                                .copyWith(color: Palette.backgraound, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 2,
                    decoration: const BoxDecoration(
                      color: Palette.backgraound,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                      height: 15,
                      decoration: const BoxDecoration(
                        color: Palette.backgraound,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 15,
                    width: ((userInfo.caloriesGoal - userInfo.caloriesCounter) /
                        userInfo.caloriesGoal *
                        constraints.maxWidth),
                    decoration: const BoxDecoration(
                      color: Palette.nuetral,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
