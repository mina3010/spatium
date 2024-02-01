import 'package:DMI/core/data/model/responses/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'general_response.g.dart';

@JsonSerializable()
class GeneralResponse {
  final String? kind;
  final Data? data;

  GeneralResponse({
    required this.kind,
    required this.data,
  });

  factory GeneralResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneralResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GeneralResponseToJson(this);
}
