import 'package:fast_database_sync/shared/models/model_dom_cla.dart';
import 'package:fast_database_sync/shared/models/model_tab_ende.dart';
import 'package:fast_database_sync/shared/models/model_tab_pcon.dart';
import 'package:fast_database_sync/shared/models/model_tab_rece.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_tab_parc.g.dart';

@JsonSerializable(explicitToJson: true)
class TabParc {
  int? agendom;
  int? agenqua;
  int? agenqui;
  int? agensab;
  int? agenseg;
  int? agensex;
  int? agenter;
  int? codparc;
  int? fgeparc;
  int? motbloq;
  int? usuparc;
  List<int>? planos;
  String? cnpparc;
  String? emaparc;
  String? filclie;
  String? nomparc;
  String? obsparc;
  String? pesparc;
  String? regparc;
  String? sexparc;
  String? sobparc;
  List<DomCla>? classificacoes;
  List<TabEnde>? enderecos;
  List<TabRece>? parcelasemaberto;
  List<TabRece>? parcelasselecionadas;
  TabPcon? dataParaVisita;

  TabParc({
    this.agendom,
    this.agenqua,
    this.agenqui,
    this.agensab,
    this.agenseg,
    this.agensex,
    this.agenter,
    this.codparc,
    this.fgeparc,
    this.motbloq,
    this.usuparc,
    this.planos,
    this.cnpparc,
    this.emaparc,
    this.filclie,
    this.nomparc,
    this.obsparc,
    this.pesparc,
    this.regparc,
    this.sexparc,
    this.sobparc,
    this.classificacoes,
    this.enderecos,
    this.parcelasemaberto,
    this.parcelasselecionadas,
    this.dataParaVisita,
  });

  factory TabParc.fromJson(Map<String, dynamic> json) =>
      _$TabParcFromJson(json);

  TabParc createJson(Map<String, dynamic> json) => TabParc.fromJson(json);

  Map<String, dynamic> toJson() => _$TabParcToJson(this);
}
