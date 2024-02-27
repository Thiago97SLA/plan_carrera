import 'package:flutter/material.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/ui/componets/custom_scaffold.dart';
import 'package:plancarrera/ui/utils/font.dart';
import 'package:plancarrera/ui/utils/palette.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    required this.userInfo,
    super.key,
  });
  static const route = "/DetailScreen";

  final UserModel userInfo;

  @override
  State<DetailScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      padding: const EdgeInsets.all(20),
      appBar: AppBar(
          backgroundColor: Palette.backgraound,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Details',
                style: FontConstants.body1.copyWith(color: Palette.nuetral),
              )
            ],
          )),
      body: Column(
        children: [
          SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Steps',
                style: FontConstants.heading1
                    .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    '${widget.userInfo.stepsCounter} ',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '/ ${widget.userInfo.stepsGoal}',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
          const Divider(
            color: Palette.nuetral,
          ),
          SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Calories',
                style: FontConstants.heading1
                    .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    '${widget.userInfo.caloriesCounter} ',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '/ ${widget.userInfo.caloriesGoal}',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
          const Divider(
            color: Palette.nuetral,
          ),
          SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Water',
                style: FontConstants.heading1
                    .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    '${widget.userInfo.waterCounter} ',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '/ ${widget.userInfo.waterGoal}',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
          const Divider(
            color: Palette.nuetral,
          ),
          SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Heart rate',
                style: FontConstants.heading1
                    .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    '${widget.userInfo.heartRate} ',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'bpm',
                    style: FontConstants.heading3
                        .copyWith(color: Palette.nuetral, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
