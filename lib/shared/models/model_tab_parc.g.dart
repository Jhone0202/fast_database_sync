// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_tab_parc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabParc _$TabParcFromJson(Map<String, dynamic> json) => TabParc(
      agendom: json['agendom'] as int?,
      agenqua: json['agenqua'] as int?,
      agenqui: json['agenqui'] as int?,
      agensab: json['agensab'] as int?,
      agenseg: json['agenseg'] as int?,
      agensex: json['agensex'] as int?,
      agenter: json['agenter'] as int?,
      codparc: json['codparc'] as int?,
      fgeparc: json['fgeparc'] as int?,
      motbloq: json['motbloq'] as int?,
      usuparc: json['usuparc'] as int?,
      planos: (json['planos'] as List<dynamic>?)?.map((e) => e as int).toList(),
      cnpparc: json['cnpparc'] as String?,
      emaparc: json['emaparc'] as String?,
      filclie: json['filclie'] as String?,
      nomparc: json['nomparc'] as String?,
      obsparc: json['obsparc'] as String?,
      pesparc: json['pesparc'] as String?,
      regparc: json['regparc'] as String?,
      sexparc: json['sexparc'] as String?,
      sobparc: json['sobparc'] as String?,
      classificacoes: (json['classificacoes'] as List<dynamic>?)
          ?.map((e) => DomCla.fromJson(e as Map<String, dynamic>))
          .toList(),
      enderecos: (json['enderecos'] as List<dynamic>?)
          ?.map((e) => TabEnde.fromJson(e as Map<String, dynamic>))
          .toList(),
      parcelasemaberto: (json['parcelasemaberto'] as List<dynamic>?)
          ?.map((e) => TabRece.fromJson(e as Map<String, dynamic>))
          .toList(),
      parcelasselecionadas: (json['parcelasselecionadas'] as List<dynamic>?)
          ?.map((e) => TabRece.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataParaVisita: json['dataParaVisita'] == null
          ? null
          : TabPcon.fromJson(json['dataParaVisita'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TabParcToJson(TabParc instance) => <String, dynamic>{
      'agendom': instance.agendom,
      'agenqua': instance.agenqua,
      'agenqui': instance.agenqui,
      'agensab': instance.agensab,
      'agenseg': instance.agenseg,
      'agensex': instance.agensex,
      'agenter': instance.agenter,
      'codparc': instance.codparc,
      'fgeparc': instance.fgeparc,
      'motbloq': instance.motbloq,
      'usuparc': instance.usuparc,
      'planos': instance.planos,
      'cnpparc': instance.cnpparc,
      'emaparc': instance.emaparc,
      'filclie': instance.filclie,
      'nomparc': instance.nomparc,
      'obsparc': instance.obsparc,
      'pesparc': instance.pesparc,
      'regparc': instance.regparc,
      'sexparc': instance.sexparc,
      'sobparc': instance.sobparc,
      'classificacoes':
          instance.classificacoes?.map((e) => e.toJson()).toList(),
      'enderecos': instance.enderecos?.map((e) => e.toJson()).toList(),
      'parcelasemaberto':
          instance.parcelasemaberto?.map((e) => e.toJson()).toList(),
      'parcelasselecionadas':
          instance.parcelasselecionadas?.map((e) => e.toJson()).toList(),
      'dataParaVisita': instance.dataParaVisita?.toJson(),
    };
