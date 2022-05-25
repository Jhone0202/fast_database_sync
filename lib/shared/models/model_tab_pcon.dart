import 'package:json_annotation/json_annotation.dart';

part 'model_tab_pcon.g.dart';

@JsonSerializable(explicitToJson: true)
class TabPcon {
  @JsonKey(disallowNullValue: true)
  int? codpcon;
  int? parpcon;
  String? filpcon;
  DateTime? dthpcon;
  String? titpcon;
  int? usupcon;
  String? msgpcon;
  DateTime? propcon;
  int? tippcon;
  int? codrece;
  int? valpcon;
  int? usvpcon;
  DateTime? dhvpcon;

  TabPcon({
    this.codpcon,
    this.parpcon,
    this.filpcon,
    this.dthpcon,
    this.titpcon,
    this.usupcon,
    this.msgpcon,
    this.propcon,
    this.tippcon,
    this.codrece,
    this.valpcon,
    this.usvpcon,
    this.dhvpcon,
  });

  factory TabPcon.fromJson(Map<String, dynamic> json) =>
      _$TabPconFromJson(json);

  TabPcon createJson(Map<String, dynamic> json) => TabPcon.fromJson(json);

  Map<String, dynamic> toJson() => _$TabPconToJson(this);
}
