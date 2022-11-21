import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:context_holder/context_holder.dart';
import 'package:flutter/material.dart';

BuildContext context = ContextHolder.currentContext;
Future errorSnackbar(String message) async {
  final materialBanner = MaterialBanner(
    elevation: 0,
    backgroundColor: Colors.transparent,
    forceActionsBelow: true,
    content: AwesomeSnackbarContent(
      title: 'Terjadi Kesalahan!!',
      message: message,
      contentType: ContentType.failure,
      inMaterialBanner: true,
    ),
    actions: const [SizedBox.shrink()],
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentMaterialBanner()
    ..showMaterialBanner(materialBanner);

  await Future.delayed(const Duration(seconds: 3));
  closeSnackbar();
}

closeSnackbar() {
  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
}
