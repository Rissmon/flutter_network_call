import 'package:dio/dio.dart';
import 'package:flutter_sample/data/network/base_response.dart';

class NetworkService {
  late Dio _dio;
  final String baseUrl = "https://run.mocky.io/v3/";

  NetworkService() {
    _getDefaultDioClient();
  }

  _getDefaultDioClient() async {
    _dio = Dio()..options.baseUrl = baseUrl;
  }

  Future<APIResponse<T>> executeRequest<T>(
      {String endpoint = "c4ab4c1c-9a55-4174-9ed2-cbbe0738eedf"}) async {
    try {
      final response = await _dio.request(endpoint);
      return APISuccess(response.data);
    } on DioError catch (error) {
      final errorText = error.toString();
      return APIFailure(errorText);
    } catch (error) {
      return APIFailure(error.toString());
    }
  }
}
