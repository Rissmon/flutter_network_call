// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutCountryResponse _$$_AboutCountryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AboutCountryResponse(
      title: json['title'] as String?,
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Rows.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AboutCountryResponseToJson(
        _$_AboutCountryResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };

_$_Rows _$$_RowsFromJson(Map<String, dynamic> json) => _$_Rows(
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageHref: json['imageHref'] as String?,
    );

Map<String, dynamic> _$$_RowsToJson(_$_Rows instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.imageHref,
    };
