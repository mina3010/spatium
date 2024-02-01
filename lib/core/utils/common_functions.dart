// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:DMI/core/constants.dart';
import 'package:DMI/core/data/model/app/app_settings.dart';
import 'package:DMI/core/data/model/app/preference.dart';
import 'package:DMI/core/providers/settings_provider.dart';
import 'package:DMI/core/res/colors.dart';
import 'package:DMI/core/utils/app_navigation.dart';
import 'package:DMI/core/utils/arabic_numbers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get_it/get_it.dart';
import 'package:lecle_downloads_path_provider/lecle_downloads_path_provider.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

bool isScreen(Type widgetType, {String? typeName}) {
  if (NavigationHistoryObserver().history.isEmpty) return false;

  if (typeName != null) {
    return NavigationHistoryObserver().top?.settings.name == typeName;
  }

  return NavigationHistoryObserver().top?.settings.name ==
      widgetType.toString();
}

Future launchURL(BuildContext context, String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
  } else {
    debugPrint('Could not launch $url');
  }
}

Future changeSettings({
  required BuildContext context,
  required AppSettings oldAppSettings,
  bool? isDark,
}) async {
  await Provider.of<SettingsProvider>(context, listen: false).saveAppSettings(
    oldAppSettings.copyWith(
      isDark: isDark,
    ),
  );
}

String getArabicNumber(BuildContext context, int num) {
  return (TranslationsConstants.isEnglish(context))
      ? num.toString()
      : num.toArabicNumbers;
}

void showErrorToast(BuildContext context, String message) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      message: message,
      backgroundColor: AppColors.errorColor,
    ),
  );
}

void showSuccessToast(BuildContext context, String message) {
  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      message: message,
      //backgroundColor: AppColors.successColor,
      backgroundColor: AppColors.colorIcon,
    ),
  );
}


String dateFormat(String dateString) {
  String date =
      DateFormat('dd/MM/yyyy', 'ar').format(DateTime.parse(dateString));

  return date;
}

String dateTimeFormat(String dateString) {
  String date = DateFormat('dd/MM/yyyy, hh:mm a', 'ar')
      .format(DateTime.parse(dateString));

  return date;
}

Future<Directory> getDownloadsDirectory() async {
  Directory? downloadsDirectory;

  if (Platform.isAndroid) {
    // downloadsDirectory = await DownloadsPathProvider.downloadsDirectory;
    downloadsDirectory = await DownloadsPath.downloadsDirectory();

    if (!await downloadsDirectory!.exists()) {
      await downloadsDirectory.create();
    }
  } else {
    downloadsDirectory = await getApplicationDocumentsDirectory();
  }

  return downloadsDirectory;
}

downloadFileExternal(String url) async {
  try {
    Directory downloadsDirectory = await getDownloadsDirectory();

    String fileName = url.split("/").last;
    fileName =
        "${fileName.split(".").first}_${DateTime.now().millisecondsSinceEpoch}.${fileName.split(".").last}";

    await FlutterDownloader.enqueue(
      url: url,
      fileName: fileName,
      savedDir: downloadsDirectory.path,
      // show download progress in status bar (for Android)
      showNotification: true,
      // click on notification to open downloaded file (for Android)
      openFileFromNotification: true,
      saveInPublicStorage: true,
    );
  } on PlatformException catch (_) {}
}
