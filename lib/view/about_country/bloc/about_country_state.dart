part of 'about_country_bloc.dart';

@immutable
abstract class AboutCountryState {}

class AboutCountryLoading extends AboutCountryState {}

class AboutCountryLoaded extends AboutCountryState {
  final List<Rows>? data;
  final String title;

  AboutCountryLoaded(this.title, this.data);
}

class AboutCountryFailure extends AboutCountryState {
  final String message;

  AboutCountryFailure(this.message);
}
