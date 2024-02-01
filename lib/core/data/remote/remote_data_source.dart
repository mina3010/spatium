import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:DMI/core/data/remote/dio_helper.dart';

abstract class RemoteDataSource {

  Future<GeneralResponse> guest();

}

class RemoteDataSourceImp extends RemoteDataSource {
  late final DioHelper dioHelper;

  RemoteDataSourceImp({required this.dioHelper});

  @override
  Future<GeneralResponse> guest() async {
    final data = await dioHelper.getData(
      url: "https://www.reddit.com/r/FlutterDev/new/.json",
    );
    return GeneralResponse.fromJson(data.data as Map<String, dynamic>);
  }

}
