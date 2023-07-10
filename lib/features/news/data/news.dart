import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    required String text,
    required String? url,
    required DateTime startedAt,
    @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
        required DateTime? endedAt,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

DateTime? _dateTimeFromJson(String? json) => DateTime.tryParse(json.toString());

String? _dateTimeToJson(DateTime? instance) => instance?.toIso8601String();
