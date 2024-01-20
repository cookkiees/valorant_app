import 'service_api_method_type.dart';

abstract class ApiRequest<T> {
  String get path;
  ApiMethodType get method;
  Map<String, String>? get headers;
  Map<String, dynamic>? get params;
  T Function(Map<String, dynamic>) get decoder;
}
