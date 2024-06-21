import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediator/core/dimensions/dimensions.dart';
import '../core/app_colors.dart';
import '../core/navigator.dart';
import 'app_button.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    required this.message,
    required this.onConfirm,
    this.onCancel,
  }) : super(key: key);

  static void show(
    BuildContext context, {
    required String message,
    required void Function() onConfirm,
    void Function()? onCancel,
  }) {
    showDialog(
      barrierDismissible: false,
      barrierColor: AppColors.white.withOpacity(0.1),
      context: context,
      builder: (context) => AppDialog(
        message: message,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }

  final String message;
  final void Function() onConfirm;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: AppColors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              FontAwesomeIcons.circleInfo,
              color: AppColors.grayA6,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.height),
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    color: AppColors.red,
                    title: "Discard",
                    onTap: () {
                      if (onCancel == null) {
                        RouteUtils.pop(context: context);
                        return;
                      }
                      onCancel!();
                    },
                  ),
                ),
                SizedBox(
                  width: 32.width,
                ),
                Expanded(
                  child: AppButton(
                    color: AppColors.green,
                    title: "Keep",
                    onTap: onConfirm,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
