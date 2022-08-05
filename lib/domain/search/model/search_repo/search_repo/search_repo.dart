import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'search_repo.g.dart';

@JsonSerializable()
class SearchRepo {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  SearchRepo({this.page, this.results, this.totalPages, this.totalResults});

  factory SearchRepo.fromJson(Map<String, dynamic> json) {
    return _$SearchRepoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRepoToJson(this);
}
