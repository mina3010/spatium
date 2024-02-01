part of 'task_repository.dart';

class TaskRepositoryImp extends TaskRepository {
  late final RemoteDataSource _remoteDataSource;

  TaskRepositoryImp({RemoteDataSource? remoteDataSource}) {
    _remoteDataSource = remoteDataSource ?? GetIt.I.get<RemoteDataSource>();
  }

  @override
  Future<Result<Failure,GeneralResponse>> getHotDataResponse() async {
    try {
      final result = await _remoteDataSource.hotData();
      return Success(result);
    } catch (e, stacktrace) {
      print("endPointError: $e || ${stacktrace.toString()}");
      return Error(DioUtils.getDioExceptionMessage(e, stacktrace));
    }
  }

  @override
  Future<Result<Failure,GeneralResponse>> getNewDataResponse() async {
    try {
      final result = await _remoteDataSource.newData();
      return Success(result);
    } catch (e, stacktrace) {
      print("endPointError: $e || ${stacktrace.toString()}");
      return Error(DioUtils.getDioExceptionMessage(e, stacktrace));
    }
  }

  @override
  Future<Result<Failure,GeneralResponse>> getRisingDataResponse() async {
    try {
      final result = await _remoteDataSource.risingData();
      return Success(result);
    } catch (e, stacktrace) {
      print("endPointError: $e || ${stacktrace.toString()}");
      return Error(DioUtils.getDioExceptionMessage(e, stacktrace));
    }
  }
}
