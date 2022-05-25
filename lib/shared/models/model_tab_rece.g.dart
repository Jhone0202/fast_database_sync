// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_tab_rece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabRece _$TabReceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['codrece', 'documento', 'venda'],
  );
  return TabRece(
    codfili: json['codfili'] as String?,
    numparc: json['numparc'] as int?,
    numsubp: json['numsubp'] as int?,
    aturece: json['aturece'] == null
        ? null
        : DateTime.parse(json['aturece'] as String),
    vlrparc: (json['vlrparc'] as num?)?.toDouble(),
    usurece: json['usurece'] as int?,
    pagrece: json['pagrece'] == null
        ? null
        : DateTime.parse(json['pagrece'] as String),
    vlrdesc: (json['vlrdesc'] as num?)?.toDouble(),
    vlrrece: (json['vlrrece'] as num?)?.toDouble(),
    increce: json['increce'] == null
        ? null
        : DateTime.parse(json['increce'] as String),
    starece: json['starece'] as String?,
    vndrece: json['vndrece'] as int?,
    reccheq: json['reccheq'] as int?,
    venrece: json['venrece'] == null
        ? null
        : DateTime.parse(json['venrece'] as String),
    canrece: json['canrece'] == null
        ? null
        : DateTime.parse(json['canrece'] as String),
    filpgto: json['filpgto'] as String?,
    ecfpgto: json['ecfpgto'] as String?,
    codcobr: json['codcobr'] as int?,
    renrece: json['renrece'] == null
        ? null
        : DateTime.parse(json['renrece'] as String),
    vlrrene: (json['vlrrene'] as num?)?.toDouble(),
    carrece: json['carrece'] as int?,
    evprece: json['evprece'] as String?,
    codparc: json['codparc'] as int?,
    ctrrece: json['ctrrece'] as int?,
    codbaix: json['codbaix'] as int?,
    vlrcorr: (json['vlrcorr'] as num?)?.toDouble(),
    vlrsald: (json['vlrsald'] as num?)?.toDouble(),
    filparc: json['filparc'] as String?,
    operece: json['operece'] as int?,
    ctarece: json['ctarece'] as int?,
    ctgrece: json['ctgrece'] as int?,
    ctcrece: json['ctcrece'] as int?,
    trcrece: json['trcrece'] as int?,
    jurrece: (json['jurrece'] as num?)?.toDouble(),
    mulrece: (json['mulrece'] as num?)?.toDouble(),
    obsrece: json['obsrece'] as String?,
    barrece: json['barrece'] as String?,
    datbaix: json['datbaix'] == null
        ? null
        : DateTime.parse(json['datbaix'] as String),
    nosnume: json['nosnume'] as int?,
    devrece: json['devrece'] as int?,
    meirece: json['meirece'] as int?,
    datesto: json['datesto'] == null
        ? null
        : DateTime.parse(json['datesto'] as String),
    codrece: json['codrece'] as int?,
    codnego: json['codnego'] as int?,
    vlrtaxa: (json['vlrtaxa'] as num?)?.toDouble(),
    documento: json['documento'] as String?,
    venda: json['venda'] == null
        ? null
        : TabVend.fromJson(json['venda'] as Map<String, dynamic>),
    datcalc: json['datcalc'] == null
        ? null
        : DateTime.parse(json['datcalc'] as String),
    meivend: json['meivend'] as int?,
  );
}

Map<String, dynamic> _$TabReceToJson(TabRece instance) {
  final val = <String, dynamic>{
    'codfili': instance.codfili,
    'numparc': instance.numparc,
    'numsubp': instance.numsubp,
    'aturece': instance.aturece?.toIso8601String(),
    'vlrparc': instance.vlrparc,
    'usurece': instance.usurece,
    'pagrece': instance.pagrece?.toIso8601String(),
    'vlrdesc': instance.vlrdesc,
    'vlrrece': instance.vlrrece,
    'increce': instance.increce?.toIso8601String(),
    'starece': instance.starece,
    'vndrece': instance.vndrece,
    'reccheq': instance.reccheq,
    'venrece': instance.venrece?.toIso8601String(),
    'canrece': instance.canrece?.toIso8601String(),
    'filpgto': instance.filpgto,
    'ecfpgto': instance.ecfpgto,
    'codcobr': instance.codcobr,
    'renrece': instance.renrece?.toIso8601String(),
    'vlrrene': instance.vlrrene,
    'carrece': instance.carrece,
    'evprece': instance.evprece,
    'codparc': instance.codparc,
    'ctrrece': instance.ctrrece,
    'codbaix': instance.codbaix,
    'vlrcorr': instance.vlrcorr,
    'vlrsald': instance.vlrsald,
    'filparc': instance.filparc,
    'operece': instance.operece,
    'ctarece': instance.ctarece,
    'ctgrece': instance.ctgrece,
    'ctcrece': instance.ctcrece,
    'trcrece': instance.trcrece,
    'jurrece': instance.jurrece,
    'mulrece': instance.mulrece,
    'obsrece': instance.obsrece,
    'barrece': instance.barrece,
    'datbaix': instance.datbaix?.toIso8601String(),
    'nosnume': instance.nosnume,
    'devrece': instance.devrece,
    'meirece': instance.meirece,
    'datesto': instance.datesto?.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codrece', instance.codrece);
  val['codnego'] = instance.codnego;
  val['vlrtaxa'] = instance.vlrtaxa;
  writeNotNull('documento', instance.documento);
  writeNotNull('venda', instance.venda);
  val['datcalc'] = instance.datcalc?.toIso8601String();
  val['meivend'] = instance.meivend;
  return val;
}
