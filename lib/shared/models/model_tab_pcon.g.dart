// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_tab_pcon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabPcon _$TabPconFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['codpcon'],
  );
  return TabPcon(
    codpcon: json['codpcon'] as int?,
    parpcon: json['parpcon'] as int?,
    filpcon: json['filpcon'] as String?,
    dthpcon: json['dthpcon'] == null
        ? null
        : DateTime.parse(json['dthpcon'] as String),
    titpcon: json['titpcon'] as String?,
    usupcon: json['usupcon'] as int?,
    msgpcon: json['msgpcon'] as String?,
    propcon: json['propcon'] == null
        ? null
        : DateTime.parse(json['propcon'] as String),
    tippcon: json['tippcon'] as int?,
    codrece: json['codrece'] as int?,
    valpcon: json['valpcon'] as int?,
    usvpcon: json['usvpcon'] as int?,
    dhvpcon: json['dhvpcon'] == null
        ? null
        : DateTime.parse(json['dhvpcon'] as String),
  );
}

Map<String, dynamic> _$TabPconToJson(TabPcon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codpcon', instance.codpcon);
  val['parpcon'] = instance.parpcon;
  val['filpcon'] = instance.filpcon;
  val['dthpcon'] = instance.dthpcon?.toIso8601String();
  val['titpcon'] = instance.titpcon;
  val['usupcon'] = instance.usupcon;
  val['msgpcon'] = instance.msgpcon;
  val['propcon'] = instance.propcon?.toIso8601String();
  val['tippcon'] = instance.tippcon;
  val['codrece'] = instance.codrece;
  val['valpcon'] = instance.valpcon;
  val['usvpcon'] = instance.usvpcon;
  val['dhvpcon'] = instance.dhvpcon?.toIso8601String();
  return val;
}
