import 'dart:convert';

import 'package:valorant_app/app/core/services/service_api_errors.dart';

import '../constants/app_constants.dart';
import '../helpers/app_logger.dart';
import '../helpers/app_prefs.dart';
import 'service_api_method_type.dart';
import 'service_api_result.dart';
import 'service_api_result_type.dart';
import 'service_api_request.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final ApiService _instance = ApiService._privateConstructor();
  ApiService._privateConstructor();
  static ApiService get instance {
    return _instance;
  }

  Future<ApiResult<T>> request<T>(ApiRequest<T> request,
      {bool isJsonEncode = false, bool withAuthorization = false}) async {
    final uri = _buildUrl(request.path, request.params);
    final headers = request.headers;
    if (withAuthorization == true) {
      final authorization = await AppPrefs.getStringToken();
      headers?['Authorization'] = 'Bearer $authorization';
    }
    http.Response response;

    try {
      switch (request.method) {
        case ApiMethodType.get:
          response = await http.get(uri, headers: headers);
          break;
        case ApiMethodType.post:
          response =
              await http.post(uri, body: request.params, headers: headers);
          break;
        case ApiMethodType.put:
          response =
              await http.put(uri, body: request.params, headers: headers);
          break;
        case ApiMethodType.delete:
          response = await http.delete(uri, headers: headers);
          break;
        default:
          response = await http.get(uri, headers: headers);
      }
      debugPrint(request, headers, response);

      var decodedJson = jsonDecode(response.body);
      var data = request.decoder(decodedJson);

      switch (response.statusCode) {
        case 200:
          return ApiResult<T>(
            result: ApiResultType.success,
            message: "Successful",
            data: data,
          );
        case 400:
          return ApiResult<T>(
            result: ApiResultType.failure,
            message: response.statusCode.errorMessage,
          );
        case 401:
          return ApiResult<T>(
            result: ApiResultType.failure,
            message: response.statusCode.errorMessage,
          );
        case 403:
          return ApiResult<T>(
            result: ApiResultType.failure,
            message: response.statusCode.errorMessage,
          );
        default:
          return ApiResult<T>(
            result: ApiResultType.failure,
            message: "Unknown Status Code: ${response.statusCode}",
          );
      }
    } catch (e) {
      return ApiResult(
        result: ApiResultType.failure,
        message: 'Failure: $e',
      );
    }
  }

  Uri _buildUrl(String path, Map<String, dynamic>? params) {
    final url = Uri.parse(
      AppConstants.apiBaseURL + AppConstants.apiVersion + path,
    );
    if (params != null && params.isNotEmpty) {
      return url.replace(queryParameters: params);
    }
    return url;
  }

  Future<void> debugPrint(
      ApiRequest request, headers, http.Response response) async {
    AppLogger.logDebug('--------------- REQUEST & RESPONSE ---------------');
    AppLogger.logDebug('Method: ${request.method}');
    AppLogger.logDebug('Path: ${response.request?.url.toString()}');
    AppLogger.logDebug('Headers: $headers');
    AppLogger.logDebug('Parameters: ${request.params}');
    AppLogger.logDebug('Runtime Type: ${request.runtimeType}');
    AppLogger.logDebug('Hash Code: ${request.hashCode}');
    AppLogger.logDebug('Status: ${response.statusCode}');
    AppLogger.logDebug('Headers: ${response.headers}');
    AppLogger.logDebug('Response Body: ${response.body}');
    AppLogger.logDebug('--------------------------------------------------');
  }
}
