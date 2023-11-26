
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'color.dart';

AwesomeDialog errorDialog({required BuildContext context,
  required String desc
}) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    headerAnimationLoop: false,
    title: 'Error',
    desc: desc,
    btnOkOnPress: () {},
    btnOkIcon: Icons.cancel,
    btnOkColor: mainColor,
  );
}
AwesomeDialog infoDialog({required BuildContext context,
  required String desc
}) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.info,
    animType: AnimType.rightSlide,
    headerAnimationLoop: false,
    title: 'sure',
    desc: desc,
    btnOkOnPress: () {},
    btnOkIcon: Icons.cancel,
    btnOkColor: mainColor,
  );
}