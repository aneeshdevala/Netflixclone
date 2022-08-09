import 'package:json_annotation/json_annotation.dart';

part 'hotand_new_resp.g.dart';

@JsonSerializable()
class HotandNewResp {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<Result> results;

  HotandNewResp({this.page, this.results = const []});

  factory HotandNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotandNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandNewRespToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

//incase of tv series,use original name instead of title
  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  Result({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
