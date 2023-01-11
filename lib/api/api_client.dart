import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as Http;
import 'api_checker.dart';
import 'package:dio/dio.dart' as D;

String? tokenMain;
String baseUrl = "http://proxymed.citizensadgrace.com/";

class ApiClient extends GetxService {
  final String appBaseUrl;
  static const String noInternetMessage =
      'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;
  String? token;
  Map<String, String> _mainHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': "*",
  };

  ApiClient({
    required this.appBaseUrl,
  }) {
    if (tokenMain != null) {
      updateHeader(
        tokenMain!,
      );
    }
  }
  void updateHeader(
    String token,
  ) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'Access-Control-Allow-Origin': "*",
      'Authorization': 'Bearer $token'
    };
  }

  ApiChecker apichecker = ApiChecker();
  Future<Response> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      final url = Uri.parse(appBaseUrl + uri);
      final newURI = url.replace(queryParameters: query);
      print("Url:  $newURI");
      Http.Response _response = await Http.get(
        newURI,
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      return apichecker.checkApi(
        respons: _response,
      );
    } catch (e) {
      print("eroor : $e");
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      print(Uri.parse(appBaseUrl + uri));
      print("body : ${jsonEncode(body)}");
      print("headers : ${jsonEncode(_mainHeaders)}");
      Http.Response _response = await Http.post(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      return apichecker.checkApi(respons: _response);
    } catch (e) {
      print("error" + e.toString());
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postWithForm(String uri, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    try {
      Map<String, String> stringQueryParameters =
          body.map((key, value) => MapEntry(key, value.toString()));
      print(stringQueryParameters);
      print({
        'user_id': '356',
        'availability': '[{"day":"Tuesday","time":"11:21 PM"}]',
        'role_id': '2'
      });
      var headers = _mainHeaders;
      var request = Http.MultipartRequest(
          'POST',
          Uri.parse(
              'http://proxymed.citizensadgrace.com/api/doctorAvailability'));
      request.fields
          .addAll(body.map((key, value) => MapEntry(key, value.toString())));

      request.headers.addAll(headers);

      Http.StreamedResponse streamedResponse = await request.send();
      var response = await Http.Response.fromStream(streamedResponse);
      return apichecker.checkApi(respons: response);
    } catch (e) {
      print("error" + e.toString());
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> putData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      Http.Response _response = await Http.put(
        Uri.parse(appBaseUrl + uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      return apichecker.checkApi(respons: _response);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> deleteData(String uri,
      {Map<String, dynamic>? query,
      Map<String, String>? headers,
      Map<String, dynamic>? body}) async {
    try {
      final url = Uri.parse(appBaseUrl + uri);
      final newURI = url.replace(queryParameters: query);
      print("Url:  $newURI");
      print("body:  $body");
      Http.Response _response = await Http.delete(
        url,
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      return apichecker.checkApi(
        respons: _response,
      );
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  // Response handleResponse(Http.Response response, String uri) {
  //   dynamic _body;
  //   try {
  //     _body = jsonDecode(response.body);
  //   } catch (e) {}
  //   Response _response = Response(
  //     body: _body != null ? _body : response.body,
  //     bodyString: response.body.toString(),
  //     request: Request(
  //         headers: response.request!.headers,
  //         method: response.request!.method,
  //         url: response.request!.url),
  //     headers: response.headers,
  //     statusCode: response.statusCode,
  //     statusText: response.reasonPhrase,
  //   );
  //
  //   if (_response.statusCode != 200 && _response.body == null) {
  //     _response = const Response(statusCode: 0, statusText: noInternetMessage);
  //   }
  //   print(
  //       '====> API Response: [${_response.statusCode}] $uri\n${_response.body}');
  //   return _response;
  // }
}
