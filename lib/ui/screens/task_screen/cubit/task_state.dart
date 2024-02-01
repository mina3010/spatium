import 'package:DMI/core/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;

  const factory TaskState.success() = Success;

  const factory TaskState.successNavigateNext(Widget screen) =
      SuccessNavigateNext;

  const factory TaskState.loadingPlan() = LoadingPlan;

  const factory TaskState.loadingResult() = LoadingResult;

  const factory TaskState.loadingMoreResult() = LoadingMoreResult;

  const factory TaskState.noMoreResult() = NoMoreResult;
  const factory TaskState.loading() = Loading;

  const factory TaskState.noInternet([Function()? onRetry]) = NoInternet;

  const factory TaskState.error([Failure? failure]) = ErrorDetails;
}

extension TaskStateExtention on TaskState {
  bool get isInitial => this is _Initial;

  bool get isLoading => this is Loading;

  bool get isSuccess => this is Success;

  bool get isSuccessNavigateNext => this is SuccessNavigateNext;

  bool get isError => this is ErrorDetails;

  bool get isNoInternet => this is NoInternet;

  bool get isLoadingPlan => this is LoadingPlan;

  bool get isLoadingResult => this is LoadingResult;

  bool get isLoadingMoreResult => this is LoadingMoreResult;

  bool get isNoMoreResult => this is NoMoreResult;
}
