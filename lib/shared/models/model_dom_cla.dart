class DomCla {
  final String? coddomi;
  final String? des_cla;
  final String? claparc;

  DomCla({this.coddomi, this.des_cla, this.claparc});

  DomCla.fromJson(Map<String, dynamic> json)
      : coddomi = json['coddomi'] as String?,
        des_cla = json['des_cla'] as String?,
        claparc = json['claparc'] as String?;

  DomCla createJson(Map<String, dynamic> json) => DomCla.fromJson(json);

  Map<String, dynamic> toJson() => {
        'coddomi': coddomi,
        'des_cla': des_cla,
        'claparc': claparc,
      };
}
