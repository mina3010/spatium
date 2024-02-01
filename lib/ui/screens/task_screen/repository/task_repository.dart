import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/core/data/remote/remote_data_source.dart';
import 'package:DMI/core/error/failures.dart';
import 'package:DMI/core/utils/dio_utils.dart';
import 'package:DMI/core/utils/multiple_result.dart';
import 'package:get_it/get_it.dart';

part 'task_repository_imp.dart';

abstract class TaskRepository {
  Future<Result<Failure, GeneralResponse>> getHotDataResponse();
  Future<Result<Failure, GeneralResponse>> getNewDataResponse();
  Future<Result<Failure, GeneralResponse>> getRisingDataResponse();
}
