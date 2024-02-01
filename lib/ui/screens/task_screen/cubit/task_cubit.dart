import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/ui/screens/task_screen/cubit/task_state.dart';
import 'package:DMI/ui/screens/task_screen/repository/task_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TaskCubit extends Cubit<TaskState> {
  static TaskCubit get(BuildContext context) => BlocProvider.of(context);

  late final TaskRepository _taskRepository;
  final List<GeneralResponse?> _myListHot = [];
  final List<GeneralResponse?> _myListNew = [];
  final List<GeneralResponse?> _myListRising = [];

  TaskCubit({
    TaskRepository? taskRepository,
  }) : super(const TaskState.initial()) {
    _taskRepository = taskRepository ?? GetIt.I.get<TaskRepository>();
  }

  Future getListHot() async {
    emit(const TaskState.loading());

    final response =
    await _taskRepository.getHotDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      print("mina:  ${result.data?.name}");
      myListHot.clear();
      myListHot.addAll(result.data!.children??[]);
      emit(const TaskState.success());
    });
  }
  Future nextHotPage() async {
    print("is next");
    if (state.isNoMoreResult || state.isLoadingMoreResult) {
      return;
    }

    emit(const TaskState.loadingMoreResult());


    final response =
    await _taskRepository.getHotDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      if (result.data!.children!.isNotEmpty) {
        myListHot.addAll(result.data!.children??[]);
        emit(const TaskState.success());
      } else {
        emit(const TaskState.noMoreResult());
      }
    });
  }

  Future getListRising() async {
    emit(const TaskState.loading());

    final response =
    await _taskRepository.getRisingDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      print("mina:  ${result.data?.name}");
      myListRising.clear();
      myListRising.addAll(result.data!.children??[]);
      emit(const TaskState.success());
    });
  }
  Future nextRisingPage() async {
    print("is next");
    if (state.isNoMoreResult || state.isLoadingMoreResult) {
      return;
    }

    emit(const TaskState.loadingMoreResult());


    final response =
    await _taskRepository.getRisingDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      if (result.data!.children!.isNotEmpty) {
        myListRising.addAll(result.data!.children??[]);
        emit(const TaskState.success());
      } else {
        emit(const TaskState.noMoreResult());
      }
    });
  }


  Future getListNew() async {
    emit(const TaskState.loading());

    final response =
    await _taskRepository.getNewDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      print("mina:  ${result.data?.name}");
      myListNew.clear();
      myListNew.addAll(result.data!.children??[]);
      emit(const TaskState.success());
    });
  }
  Future nextNewPage() async {
    print("is next");
    if (state.isNoMoreResult || state.isLoadingMoreResult) {
      return;
    }

    emit(const TaskState.loadingMoreResult());


    final response =
    await _taskRepository.getNewDataResponse();
    response.when((error) {
      if (error.isInternetFailure) {
        emit(const TaskState.noInternet());
      } else {
        emit(TaskState.error(error));
      }
    }, (result) {
      if (result.data!.children!.isNotEmpty) {
        myListNew.addAll(result.data!.children??[]);
        emit(const TaskState.success());
      } else {
        emit(const TaskState.noMoreResult());
      }
    });
  }


  Future init() async {
    await getListHot();
     getListNew();
     getListRising();
  }

  List<GeneralResponse?> get myListHot => _myListHot;
  List<GeneralResponse?> get myListNew => _myListNew;
  List<GeneralResponse?> get myListRising => _myListRising;

}
