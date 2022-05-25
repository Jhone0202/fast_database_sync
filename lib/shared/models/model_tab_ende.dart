import 'package:json_annotation/json_annotation.dart';

part 'model_tab_ende.g.dart';

@JsonSerializable()
class TabEnde {
  String? baiende;
  String? celende;
  String? cepende;
  String? cgcende;
  int? codparc;
  String? complem;
  String? endende;
  String? fonende;
  String? nom_end;
  String? nommuni;
  String? numende;
  int? ordende;
  String? referen;
  int? seqende;
  String? uf_ende;

  TabEnde({
    this.baiende,
    this.celende,
    this.cepende,
    this.cgcende,
    this.codparc,
    this.complem,
    this.endende,
    this.fonende,
    this.nom_end,
    this.nommuni,
    this.numende,
    this.ordende,
    this.referen,
    this.seqende,
    this.uf_ende,
  });

  factory TabEnde.fromJson(Map<String, dynamic> json) =>
      _$TabEndeFromJson(json);

  TabEnde createJson(Map<String, dynamic> json) => TabEnde.fromJson(json);

  Map<String, dynamic> toJson() => _$TabEndeToJson(this);
}
