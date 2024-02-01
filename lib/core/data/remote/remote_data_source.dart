import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/core/data/remote/dio_helper.dart';

abstract class RemoteDataSource {

  Future<GeneralResponse> hotData();
  Future<GeneralResponse> newData();
  Future<GeneralResponse> risingData();

}

class RemoteDataSourceImp extends RemoteDataSource {
  late final DioHelper dioHelper;

  RemoteDataSourceImp({required this.dioHelper});

  @override
  Future<GeneralResponse> newData() async {
    final data = await dioHelper.getData(
      url: "https://www.reddit.com/r/FlutterDev/new/.json",
    );
    return GeneralResponse.fromJson(data.data as Map<String, dynamic>);
  }

  @override
  Future<GeneralResponse> hotData() async {
    final data = await dioHelper.getData(
      url: "https://www.reddit.com/r/FlutterDev/hot/.json",
    );
    return GeneralResponse.fromJson(data.data as Map<String, dynamic>);
  }

  @override
  Future<GeneralResponse> risingData() async {
    final data = await dioHelper.getData(
      url: "https://www.reddit.com/r/FlutterDev/rising/.json",
    );
    return GeneralResponse.fromJson(data.data as Map<String, dynamic>);
  }

}
