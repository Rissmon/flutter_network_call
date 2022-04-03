import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class APIResponse<T> {}

class APISuccess<T> implements APIResponse<T> {
  final T data;

  const APISuccess(this.data);
}

class APIFailure<T> implements APIResponse<T> {
  final int? errorCode;
  final String? errorMessage;

  const APIFailure(this.errorMessage, {this.errorCode});

  factory APIFailure.fromJson(Response response) {
    dynamic json = response.data;

    try {
      return APIFailure<T>(json['message'] as String?,
          errorCode: response.statusCode);
    } catch (e) {
      if (kDebugMode) print(e);
      return APIFailure<T>(json.toString(), errorCode: -1);
    }
  }
}
