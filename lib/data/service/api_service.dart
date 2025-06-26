import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

final sl = GetIt.instance;

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    _initializeInterceptor();
  }

  void _initializeInterceptor() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log('🚀 REQUEST[${options.method}] => PATH: ${options.path}');
          log('Headers: ${options.headers}');
          log('Body: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('✅ RESPONSE[${response.statusCode}] => DATA: ${response.data}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          log('❌ ERROR[${e.response?.statusCode}] => MESSAGE: ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }

  Future<Map<String, String>> getHeaders({
    required String version,
    Map<String, String>? customHeaders,
  }) async {
    String token = ""; // Replace with your token logic
    final headers = {"Content-Type": "application/json", "x-version": version};
    if (token.isNotEmpty) headers["authorization"] = "Bearer $token";
    if (customHeaders != null) headers.addAll(customHeaders);
    return headers;
  }

  Future<Response> get(
    String url, {
    String version = "1.0",
    Map<String, String>? headers,
    Map<String, dynamic>? queryParams,
  }) async {
    return await dio.get(
      url,
      options: Options(
        headers: await getHeaders(version: version, customHeaders: headers),
      ),
      queryParameters: queryParams,
    );
  }

  Future<Response> post(
    String url, {
    required Map<String, dynamic> body,
    String version = "1.0",
    Map<String, String>? headers,
  }) async {
    return await dio.post(
      url,
      data: body,
      options: Options(
        headers: await getHeaders(version: version, customHeaders: headers),
      ),
    );
  }

  Future<Response> callMultipartApi(
    String url, {
    required Map<String, String> fields,
    required Map<String, List<File>>? filesMap,
    String version = "1.0",
    Map<String, String>? headers,
  }) async {
    FormData formData = FormData();

    fields.forEach((key, value) {
      formData.fields.add(MapEntry(key, value));
    });

    if (filesMap != null) {
      for (final entry in filesMap.entries) {
        for (final file in entry.value) {
          final mimeType = lookupMimeType(file.path)?.split('/');
          formData.files.add(
            MapEntry(
              entry.key,
              await MultipartFile.fromFile(
                file.path,
                contentType: mimeType != null
                    ? MediaType(mimeType[0], mimeType[1])
                    : MediaType('application', 'octet-stream'),
              ),
            ),
          );
        }
      }
    }

    return await dio.post(
      url,
      data: formData,
      options: Options(
        headers: await getHeaders(version: version, customHeaders: headers),
      ),
    );
  }
}
