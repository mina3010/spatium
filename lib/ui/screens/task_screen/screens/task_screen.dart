import 'package:DMI/core/res/app_dimensions.dart';
import 'package:DMI/ui/screens/task_screen/screens/tab_hot_screen.dart';
import 'package:DMI/core/providers/settings_provider.dart';
import 'package:DMI/core/res/colors.dart';
import 'package:DMI/core/utils/app_navigation.dart';
import 'package:DMI/core/utils/common_functions.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_cubit.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_state.dart';
import 'package:DMI/ui/screens/no_internet_screen/no_internet_screen.dart';
import 'package:DMI/ui/screens/something_went_wrong_screen/something_wrong_screen.dart';
import 'package:DMI/ui/screens/task_screen/screens/tab_new_screen.dart';
import 'package:DMI/ui/screens/task_screen/screens/tab_rising_screen.dart';
import 'package:DMI/ui/widgets/center_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
  late final AnimationController animationController;
  final ValueNotifier<String> countryCodeNotifier =
      ValueNotifier<String>('+20');

  void _onStateChangeListener(BuildContext context, TaskState state) {
    if (state.isError) {
      state.mapOrNull(error: (data) {
        final errors = data.failure?.errors;
        if (errors?.parsingError == true) {
          AppNavigation.instance.push(context, const SomethingWrongScreen());
        } else if (errors?.errorMessage != null) {
          showErrorToast(context, errors!.errorMessage!.first);
        }
      });
    } else if (state.isNoInternet) {
      state.mapOrNull(noInternet: (data) {
        AppNavigation.instance
            .push(context, NoInternetScreen(onRetry: data.onRetry));
      });
    } else if (state.isSuccessNavigateNext) {
      state.mapOrNull(successNavigateNext: (data) {
        AppNavigation.instance.pushReplacement(context, data.screen);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    countryCodeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskCubit>(
      lazy: false,
      create: (_) => TaskCubit()..getList(),
      child: BlocConsumer<TaskCubit, TaskState>(
          listener: _onStateChangeListener,
          builder: (ctx, state) {
            final cubit = TaskCubit.get(ctx);
            SettingsProvider.globalNavigatorContext =
                context.findAncestorStateOfType<State<Navigator>>()?.context;

            return DefaultTabController(
              length: 3,
              child: Scaffold(
                      backgroundColor: AppColors.scaffoldBackground,
                      body: (state.isLoading)
                          ? const Center(child: Icon(Icons.timelapse,size: 45,))
                          :Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 40.0),
                        child: Column(
                          children: [
                            TabBar(
                              padding:
                                  const EdgeInsets.all(AppDimension.padding_10),
                              indicatorColor: AppColors.appBarColor,
                              labelColor: AppColors.primaryMaterial,
                              unselectedLabelColor: AppColors.colorAccent,
                              dividerColor: AppColors.appBarColor,
                              indicatorSize: TabBarIndicatorSize.tab,
                              overlayColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.appBarColor),
                              tabs: const [
                                Tab(
                                  child: Text(
                                    "Hot",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "New",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Rising",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  HotScreen(myList: cubit.myList),
                                  NewScreen(myList: cubit.myList),
                                  RisingScreen(myList: cubit.myList),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            );
          }),
    );
  }
}
