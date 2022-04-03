import 'package:flutter_sample/data/network/base_response.dart';
import 'package:flutter_sample/data/network/network_service.dart';

abstract class AboutCountryRepository {
  Future<APIResponse> getAboutCountry();
}

class AboutCountryRepositoryImpl implements AboutCountryRepository {
  final NetworkService _apiService;

  AboutCountryRepositoryImpl(this._apiService);

  @override
  Future<APIResponse> getAboutCountry() async {
    APIResponse apiResponse = await _apiService.executeRequest();
    return apiResponse;
  }
}
