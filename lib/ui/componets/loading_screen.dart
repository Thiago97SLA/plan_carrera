import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plancarrera/ui/utils/image_constats.dart';

class Loading {
  static bool _isDialogShowing = false;

  /// shows the loading widget
  static show(BuildContext context, {bool needloadingText = false}) {
    if (_isDialogShowing) return;
    _isDialogShowing = true;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AbsorbPointer(
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150.0),
                      child: SizedBox(
                          height: 100,
                          child: Lottie.asset(
                            ImagenConstants.lottiwavecircle,
                          )),
                    ),
                    needloadingText
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Center(
                              child: Text(
                                'Loading...',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  /// hides the loading widget
  static hide(BuildContext context) {
    if (!_isDialogShowing) return;
    _isDialogShowing = false;
    Navigator.of(context, rootNavigator: true).pop();
  }

  static isVisible() {
    return _isDialogShowing;
  }

  static setIsVisible(bool isVisible) {
    _isDialogShowing = isVisible;
  }
}
