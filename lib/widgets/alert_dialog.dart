import 'package:flutter/cupertino.dart';

class MyAlertDilaog {
  static void showMyDialog({
    required BuildContext context,
    required String title,
    required String content,
    required Function() tabNo,
    required Function() tabYes,
  }) {
    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            child: const Text('No'),
            onPressed: tabNo,
          ),
          CupertinoDialogAction(
            child: const Text('Yes'),
            isDestructiveAction: true,
            onPressed: tabYes,
          )
        ],
      ),
    );
  }
}
