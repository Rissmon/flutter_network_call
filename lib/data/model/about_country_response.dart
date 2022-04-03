import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_country_response.freezed.dart';

part 'about_country_response.g.dart';

@freezed
class AboutCountryResponse with _$AboutCountryResponse {
  const factory AboutCountryResponse({
    String? title,
    List<Rows>? rows,
  }) = _AboutCountryResponse;

  factory AboutCountryResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutCountryResponseFromJson(json);
}

@freezed
class Rows with _$Rows {
  const factory Rows({
    String? title,
    String? description,
    String? imageHref,
  }) = _Rows;

  factory Rows.fromJson(Map<String, dynamic> json) => _$RowsFromJson(json);
}
