import 'dart:convert';
import 'dart:typed_data';
import 'package:fast_database_sync/shared/number_util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_vie_prgr.g.dart';

@JsonSerializable()
class ViePrgr {
  int? codgrad;
  int? codprod;
  String? livreid;
  String? refgrad;
  String? ideprod;
  double? estiest;
  String? desprod;
  int? cl4prod;
  int? cl1prod;
  int? cl2prod;
  String? nomprod;
  String? espprod;
  double? metgrad;
  num? maxacre;
  num? desmaxi;
  int? unvgrad;
  int? parfide;
  int? agrgrad;
  String? nomdivi;
  String? nomsubd;
  int? lismate;
  double? desprom;
  int? escombo;
  int? negprod;
  double? estsald;
  DateTime? prodtin;
  DateTime? prodtfi;
  double? preprom;
  double? preatac;
  double? preuffe;
  double? qtdatac;
  @JsonKey(name: 'regr_sa')
  int? regrsa;
  int? ipiregr;
  @JsonKey(name: 'p_cregr')
  int? pcregr;
  int? fdenicm;
  int? pdenicm;
  int? nfcicms;
  int? fforicm;
  int? jdenicm;
  int? jforicm;
  int? pforicm;
  @JsonKey(name: 'ipi_ent')
  int? ipient;
  @JsonKey(name: 'p_c_ent')
  int? pcent;
  int? icmdent;
  int? icmfent;
  int? ajuprec;
  String? desunid;
  String? imgUrl;
  double? _prevend;
  double? fatconv;
  String? lo1grad;
  String? lo2grad;
  String? lo3grad;
  String? filesto;
  List<String>? imagens;
  int? proplan;
  DateTime? datvenc;
  int? diavenc;
  double? pr1esto;
  int? forlinh;
  String? obsprod;
  double? vitrine;

  ViePrgr(
    this.codgrad,
    this.codprod,
    this.livreid,
    this.refgrad,
    this.ideprod,
    this.estiest,
    this.desprod,
    this.cl4prod,
    this.cl1prod,
    this.cl2prod,
    this.nomprod,
    this.espprod,
    this.metgrad,
    this.maxacre,
    this.desmaxi,
    this.unvgrad,
    this.parfide,
    this.agrgrad,
    this.nomdivi,
    this.nomsubd,
    this.lismate,
    this.desprom,
    this.escombo,
    this.negprod,
    this.estsald,
    this.prodtin,
    this.prodtfi,
    this.preprom,
    this.preatac,
    this.preuffe,
    this.qtdatac,
    this.regrsa,
    this.ipiregr,
    this.pcregr,
    this.fdenicm,
    this.pdenicm,
    this.nfcicms,
    this.fforicm,
    this.jdenicm,
    this.jforicm,
    this.pforicm,
    this.ipient,
    this.pcent,
    this.icmdent,
    this.icmfent,
    this.ajuprec,
    this.desunid,
    this.imgUrl,
    this.fatconv,
    this.lo1grad,
    this.lo2grad,
    this.lo3grad,
    this.filesto,
    this.imagens,
    this.proplan,
    this.datvenc,
    this.diavenc,
    this.pr1esto,
    this.forlinh,
    this.obsprod,
    this.vitrine,
  );

  factory ViePrgr.fromJson(Map<String, dynamic> json) =>
      _$ViePrgrFromJson(json);

  ViePrgr createJson(Map<String, dynamic> json) => ViePrgr.fromJson(json);

  Map<String, dynamic> toJson() => _$ViePrgrToJson(this);

  double get prevend {
    if (usaPrecoEspecial()) {
      return pr1esto!;
    }
    if (desprom != null && desprom! > 0) {
      return _prevend! - getFromPercent(_prevend!, desprom!);
    } else if (isPromocao()) {
      return preprom!;
    } else {
      return _prevend!;
    }
  }

  double get prevendAtac {
    if (isPromocao()) {
      return preprom!;
    } else if (preatac != null && preatac! > 0) {
      return preatac!;
    } else {
      return _prevend!;
    }
  }

  List<Uint8List> get imagesList {
    if (imagens == null) return [];
    return imagens!.map((e) => base64Decode(e)).toList();
  }

  set prevend(double value) => _prevend = value;

  bool isPromocao() {
    if (prodtin != null && prodtfi != null) {
      final DateTime current = DateTime.now();
      if (prodtin!.compareTo(current) != 1 &&
          prodtfi!.compareTo(current) != -1) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool usaPrecoEspecial() {
    return false;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViePrgr &&
          runtimeType == other.runtimeType &&
          codgrad == other.codgrad;

  @override
  int get hashCode => codgrad.hashCode;

  @JsonKey(ignore: true)
  double? get qtdeBase => metgrad != null && metgrad! > 0 ? metgrad : 1;
}
