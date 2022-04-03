import 'package:bloc/bloc.dart';
import 'package:flutter_sample/data/model/about_country_response.dart';
import 'package:flutter_sample/data/network/base_response.dart';
import 'package:flutter_sample/data/repository/about_country.dart';
import 'package:flutter_sample/view/about_country/bloc/about_country_event.dart';
import 'package:meta/meta.dart';

part 'about_country_state.dart';

class AboutCountryBloc extends Bloc<AboutCountryEvent, AboutCountryState> {
  final AboutCountryRepository _aboutCountryRepository;
  List<Rows> mainList = [];
  String title = "";

  AboutCountryBloc(this._aboutCountryRepository)
      : super(AboutCountryLoading()) {
    on<AboutCountryFetchUsersEvent>((event, emit) => invokeAPICall(emit));
    on<AboutCountrySearchEvent>((event, emit) {
      emit(AboutCountryLoading());
      doSearchFilter(event.value, emit);
    });
    add(const AboutCountryFetchUsersEvent());
  }

  invokeAPICall(Emitter<AboutCountryState> emit) async {
    APIResponse _apiResponse = await _aboutCountryRepository.getAboutCountry();
    if (_apiResponse is APISuccess) {
      AboutCountryResponse aboutCountryResponse = AboutCountryResponse.fromJson(
          _apiResponse.data); //We can move this to domain layer.
      mainList = aboutCountryResponse.rows ?? [];
      title = aboutCountryResponse.title ?? '';
      emit(AboutCountryLoaded(aboutCountryResponse.title ?? "", mainList));
    } else {
      APIFailure _apiFailure = _apiResponse as APIFailure;
      emit(AboutCountryFailure(_apiFailure.errorMessage ?? ""));
    }
  }

  void doSearchFilter(String value, Emitter<AboutCountryState> emit) {
    if (value.isEmpty) {
      emit(AboutCountryLoaded(title, mainList));
    } else {
      List<Rows>? matchingList = mainList
          .where((item) =>
              item.title != null &&
              item.title!.toUpperCase().contains(value.toUpperCase()))
          .toList();
      emit(AboutCountryLoaded(title, matchingList));
    }
  }
}
