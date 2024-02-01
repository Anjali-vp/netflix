import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'searchresp.g.dart';

@JsonSerializable()
class Searchresp {
  int? page;
  List<Result>? results;
  

  Searchresp({this.page, this.results, });

  factory Searchresp.fromJson(Map<String, dynamic> json) {
    return _$SearchrespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchrespToJson(this);
}
