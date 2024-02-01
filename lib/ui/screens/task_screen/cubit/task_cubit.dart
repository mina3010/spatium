import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_state.dart';
import 'package:DMI/ui/screens/task_screen/repository/task_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TaskCubit extends Cubit<TaskState> {
  static TaskCubit get(BuildContext context) => BlocProvider.of(context);

  late final TaskRepository _taskRepository;
  final List<GeneralResponse?> _myList = [];

  TaskCubit({
    TaskRepository? taskRepository,
  }) : super(const TaskState.initial()) {
    _taskRepository = taskRepository ?? GetIt.I.get<TaskRepository>();
  }

  Future getList() async {
    emit(const TaskState.loading());

    final response =
    await _taskRepository.getDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      print("mina:  ${result.data?.name}");
      myList.clear();
      myList.addAll(result.data!.children??[]);
      emit(const TaskState.success());
    });
  }

  Future nextPage() async {
    print("is next");
    if (state.isNoMoreResult || state.isLoadingMoreResult) {
      return;
    }

    emit(const TaskState.loadingMoreResult());


    final response =
    await _taskRepository.getDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      if (result.data!.children!.isNotEmpty) {
        myList.addAll(result.data!.children??[]);
        emit(const TaskState.success());
      } else {
        emit(const TaskState.noMoreResult());
      }
    });
  }
  List<GeneralResponse?> get myList => _myList;


}
