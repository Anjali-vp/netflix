// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchresp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchresp _$SearchrespFromJson(Map<String, dynamic> json) => Searchresp(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$SearchrespToJson(Searchresp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
