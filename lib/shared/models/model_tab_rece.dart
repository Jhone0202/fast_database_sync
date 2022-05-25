import 'package:fast_database_sync/shared/models/model_tab_vend.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_tab_rece.g.dart';

@JsonSerializable()
class TabRece {
  String? codfili;
  int? numparc;
  int? numsubp;
  DateTime? aturece;
  double? vlrparc;
  int? usurece;
  DateTime? pagrece;
  double? vlrdesc;
  double? vlrrece;
  DateTime? increce;
  String? starece;
  int? vndrece;
  int? reccheq;
  DateTime? venrece;
  DateTime? canrece;
  String? filpgto;
  String? ecfpgto;
  int? codcobr;
  DateTime? renrece;
  double? vlrrene;
  int? carrece;
  String? evprece;
  int? codparc;
  int? ctrrece;
  int? codbaix;
  double? vlrcorr;
  double? vlrsald;
  String? filparc;
  int? operece;
  int? ctarece;
  int? ctgrece;
  int? ctcrece;
  int? trcrece;
  double? jurrece;
  double? mulrece;
  String? obsrece;
  String? barrece;
  DateTime? datbaix;
  int? nosnume;
  int? devrece;
  int? meirece;
  DateTime? datesto;
  @JsonKey(disallowNullValue: true)
  int? codrece;
  int? codnego;
  double? vlrtaxa;
  @JsonKey(disallowNullValue: true)
  String? documento;
  @JsonKey(disallowNullValue: true)
  TabVend? venda;
  DateTime? datcalc;
  int? meivend;

  TabRece({
    this.codfili,
    this.numparc,
    this.numsubp,
    this.aturece,
    this.vlrparc,
    this.usurece,
    this.pagrece,
    this.vlrdesc,
    this.vlrrece,
    this.increce,
    this.starece,
    this.vndrece,
    this.reccheq,
    this.venrece,
    this.canrece,
    this.filpgto,
    this.ecfpgto,
    this.codcobr,
    this.renrece,
    this.vlrrene,
    this.carrece,
    this.evprece,
    this.codparc,
    this.ctrrece,
    this.codbaix,
    this.vlrcorr,
    this.vlrsald,
    this.filparc,
    this.operece,
    this.ctarece,
    this.ctgrece,
    this.ctcrece,
    this.trcrece,
    this.jurrece,
    this.mulrece,
    this.obsrece,
    this.barrece,
    this.datbaix,
    this.nosnume,
    this.devrece,
    this.meirece,
    this.datesto,
    this.codrece,
    this.codnego,
    this.vlrtaxa,
    this.documento,
    this.venda,
    this.datcalc,
    this.meivend,
  });

  factory TabRece.fromJson(Map<String, dynamic> json) =>
      _$TabReceFromJson(json);

  TabRece createJson(Map<String, dynamic> json) => TabRece.fromJson(json);

  Map<String, dynamic> toJson() => _$TabReceToJson(this);
}
