part of 'task_repository.dart';

class TaskRepositoryImp extends TaskRepository {
  late final RemoteDataSource _remoteDataSource;

  TaskRepositoryImp({RemoteDataSource? remoteDataSource}) {
    _remoteDataSource = remoteDataSource ?? GetIt.I.get<RemoteDataSource>();
  }

  @override
  Future<Result<Failure,GeneralResponse>> getDataResponse() async {
    try {
      final result = await _remoteDataSource.guest();
      return Success(result);
    } catch (e, stacktrace) {
      print("endPointError: $e || ${stacktrace.toString()}");
      return Error(DioUtils.getDioExceptionMessage(e, stacktrace));
    }
  }
}
