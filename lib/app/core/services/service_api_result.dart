import 'service_api_result_type.dart';

class ApiResult<T> {
  ApiResultType? result;
  String? message;
  T? data;

  ApiResult({this.result, this.message, this.data});
}
