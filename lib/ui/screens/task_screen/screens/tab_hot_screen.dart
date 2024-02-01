import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/core/res/app_text_theme.dart';
import 'package:DMI/ui/widgets/center_loading.dart';
import 'package:DMI/ui/widgets/center_no_more_result.dart';
import 'package:DMI/ui/widgets/pagination_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:DMI/core/res/colors.dart';
import 'package:DMI/core/utils/app_navigation.dart';
import 'package:DMI/core/utils/common_functions.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_cubit.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_state.dart';
import 'package:DMI/ui/screens/no_internet_screen/no_internet_screen.dart';
import 'package:DMI/ui/screens/something_went_wrong_screen/something_wrong_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotScreen extends StatefulWidget {
  final List<GeneralResponse?> myList;
  const HotScreen( {Key? key, required this.myList}) : super(key: key);

  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> {
  TextEditingController otpTextEditingController = TextEditingController();

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
  Widget build(BuildContext context) {
    return BlocProvider<TaskCubit>(
      lazy: false,
      create: (_) => TaskCubit(),
      child: BlocConsumer<TaskCubit, TaskState>(
          listener: _onStateChangeListener,
          builder: (ctx, state) {
            final cubit = TaskCubit.get(ctx);

            return Scaffold(
              body:  Column(
                children: [
                  Expanded(
                    child: PaginationList(
                      wrapping: true,
                      currentList: widget.myList,
                      itemBuilder: (_, index) {
                        if (index == widget.myList.length) {
                          if (cubit.state.isLoadingMoreResult) {
                            return const CenterCircularLoading();
                          } else if (cubit.state.isNoMoreResult) {
                            return const CenterNoMoreResult();
                          } else {
                            return const SizedBox();
                          }
                        } else {
                          final myPlanData = widget.myList[index];
                          return (index == widget.myList.length - 1)
                              ? GestureDetector(
                            onTap: () {
                              // Navigation logic here

                            },
                            child: Center(
                              child: Text(
                                "finished_plans".tr(),
                                style: AppTextTheme.largeTextSize.copyWith(
                                  color: AppColors.colorAccent,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                              : Column(
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          myPlanData?.data?.title ?? "",
                                          style:
                                          AppTextTheme.medTextSize.copyWith(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              myPlanData?.data?.selftext??"",
                                              style: AppTextTheme.smallTextSize.copyWith(
                                                color: AppColors.appBarColor,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                indent: 3,
                                endIndent: 3,
                                color: AppColors.colorGray,
                              ),
                            ],
                          );
                        }
                      },
                      isLoadingMore: cubit.state.isLoadingMoreResult,
                      isNoMore: cubit.state.isNoMoreResult, nextPage: () {  },
                      // nextPage: cubit.nextPage,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
