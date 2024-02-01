import 'dart:io';
import 'package:DMI/ui/screens/task_screen/repository/task_repository.dart';
import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:DMI/app.dart';
import 'package:DMI/core/constants.dart';
import 'package:DMI/core/data/model/app/app_settings.dart';
import 'package:DMI/core/data/model/app/preference.dart';
import 'package:DMI/core/data/remote/dio_helper.dart';
import 'package:DMI/core/data/remote/dio_services.dart';
import 'package:DMI/core/data/remote/interceptors.dart';
import 'package:DMI/core/data/remote/remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_platform/universal_platform.dart';

final GetIt inject = GetIt.instance;

Future<void> setupInjection() async {
  //Components
  inject
    ..registerSingletonAsync<SharedPreferences>(() async {
      return SharedPreferences.getInstance();
    })
    ..registerSingletonAsync<Directory>(() async {
      return await getTemporaryDirectory();
    })
    ..registerSingletonWithDependencies<Preference>(
        () =>
            PreferenceImpl(sharedPreferences: inject.get<SharedPreferences>()),
        dependsOn: [SharedPreferences])
    ..registerSingleton<Alice>(Alice(
        navigatorKey: MyApp.navigatorKey,
        showNotification:
            UniversalPlatform.isAndroid && Constants.isProductionMode == false,
        darkTheme: false,
        showShareButton: true,
        showInspectorOnShake: Constants.isProductionMode == false))
    ..registerSingletonWithDependencies<ValueNotifier<AppSettings>>(
        () => ValueNotifier<AppSettings>(
            AppSettings.fromPref(inject.get<SharedPreferences>())),
        dependsOn: [SharedPreferences])
    ..registerSingletonWithDependencies(() => DioInterceptors(),
        dependsOn: [Preference])
    ..registerSingletonWithDependencies(
        () => dioInit(inject.get<DioInterceptors>(), inject.get<Alice>(),
            inject.get<Directory>()),
        dependsOn: [DioInterceptors, Directory])
    ..registerSingletonWithDependencies<DioHelper>(
        () => DioHelper(dio: inject.get<Dio>()),
        dependsOn: [Dio])
    ..registerSingletonWithDependencies<RemoteDataSource>(
        () => RemoteDataSourceImp(dioHelper: inject.get<DioHelper>()),
        dependsOn: [DioHelper])
    ..registerSingletonWithDependencies<TaskRepository>(
        () => TaskRepositoryImp(),
        dependsOn: [RemoteDataSource]);
}
