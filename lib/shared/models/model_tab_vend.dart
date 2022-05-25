import 'package:json_annotation/json_annotation.dart';

part 'model_tab_vend.g.dart';

@JsonSerializable()
class TabVend {
  final int? codvend;
  final String? servend;
  final String? numpdvd;
  final int? numnota;

  TabVend({this.codvend, this.servend, this.numpdvd, this.numnota});

  factory TabVend.fromJson(Map<String, dynamic> json) =>
      _$TabVendFromJson(json);

  TabVend createJson(Map<String, dynamic> json) => TabVend.fromJson(json);

  Map<String, dynamic> toJson() => _$TabVendToJson(this);
}
