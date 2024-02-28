import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:plancarrera/core/constanst/constants.dart';

enum RequestMethod { get, post, put, patch, delete }

enum RequestAuthorization { bearer, none }

class APIService {
  APIService();

  Future getEndpointData<T>(
      {required String endpoint,
      required RequestMethod method,
      RequestAuthorization? requestAuthorization = RequestAuthorization.bearer,
      T Function(Map<String, dynamic> json)? fromJson,
      String? jsonKey,
      Map<String, Object>? params,
      Map<String, dynamic>? body,
      Map<String, String>? headers,
      bool needContentType = true,
      bool needToken = true,
      List<String>? urlParams}) async {
    InterceptedClient client = InterceptedClient.build(
      interceptors: [ApiInterceptor()],
    );

    if (kDebugMode && body != null) {
      log(jsonEncode(body));
    }

    http.Response? response;
    var uri = '${Constanst.hostPath}$endpoint';
    if (urlParams != null) {
      for (var paramr in urlParams) {
        uri = uri + paramr;
      }
    }

    var baseHeaders = await getRequestHeaders(
        requestAuthorization!, method, headers, endpoint, needContentType, needToken,
        uri: uri.toString());

    try {
      switch (method) {
        case RequestMethod.get:
          response = await client
              .get(
                  Uri.parse(
                    uri.toString(),
                  ),
                  headers: baseHeaders)
              .timeout(const Duration(seconds: 40));
          break;
        case RequestMethod.post:
          response = await client
              .post(
                Uri.parse(uri.toString()),
                headers: baseHeaders,
                body: jsonEncode(body),
              )
              .timeout(const Duration(seconds: 40));
          break;
        case RequestMethod.put:
          response = await client
              .put(
                Uri.parse(uri.toString()),
                headers: baseHeaders,
                body: jsonEncode(body),
              )
              .timeout(const Duration(seconds: 40));
          break;
        case RequestMethod.patch:
          response = await client
              .patch(
                Uri.parse(uri.toString()),
                headers: baseHeaders,
                body: jsonEncode(body),
              )
              .timeout(const Duration(seconds: 40));
          break;
        case RequestMethod.delete:
          response = await client
              .delete(
                Uri.parse(uri.toString()),
                headers: baseHeaders,
              )
              .timeout(const Duration(seconds: 40));
          break;
      }
      if (kDebugMode) {
        log(response.body);
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic res;
        try {
          if (jsonKey != null) {
            final rawList = jsonDecode(utf8.decode(response.bodyBytes));
            res = fromJson!({jsonKey: rawList});
          } else {
            res = fromJson!(json.decode(utf8.decode(response.bodyBytes)));
          }
        } catch (e) {
          return response.body;
        }

        return res;
      }
      final errorResponse = jsonDecode(response.body);
      if (errorResponse['errorDescription'] != null) {
        throw errorResponse['errorDescription'];
      } else if (errorResponse['msResponse'] != null) {
        throw errorResponse['msResponse']['message'];
      } else {
        throw 'Ocurrió un error';
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, String>?> getRequestHeaders(
      RequestAuthorization requestAuthorization,
      RequestMethod requestMethod,
      Map<String, String>? headers,
      String endpoint,
      bool needContentType,
      bool needToken,
      {String? uri}) async {
    Map<String, String>? baseHeaders;

    switch (requestAuthorization) {
      case RequestAuthorization.bearer:
        const token = '';
        if (kDebugMode) {
          log(token.toString());
        }

        switch (requestMethod) {
          case RequestMethod.get:
            baseHeaders = {
              HttpHeaders.authorizationHeader: 'Bearer $token',
            };
            break;
          default:
            baseHeaders = {
              if (needContentType) "Content-Type": "application/json",
              if (needToken) HttpHeaders.authorizationHeader: 'Bearer $token',
            };
            break;
        }
        break;
      case RequestAuthorization.none:
        switch (requestMethod) {
          case RequestMethod.get:
            baseHeaders = await Future(() => null);
            break;
          default:
            baseHeaders = {
              "accept": "application/json",
              "Content-Type": "application/json",
            };
            break;
        }
        break;
    }

    if (headers != null) {
      baseHeaders?.addAll(headers);
    }
    return baseHeaders;
  }
}

class ApiInterceptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    final Map<String, String> headers = Map.from(request.headers);
    return request.copyWith(
      url: request.url,
      headers: headers,
    );
  }

  @override
  Future<bool> shouldInterceptResponse() async {
    return false;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) async => response;
}
