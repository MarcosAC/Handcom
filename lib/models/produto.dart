class Produto {
  String? id;
  int? or;
  String? item;
  int? quantidade;
  String? lote;
  String? codBarras;
  String? localizacao;
  String? status;

  Produto({
    required this.id,
    required this.item,
    required this.or,
    required this.quantidade,
    required this.lote,
    required this.codBarras,
    required this.localizacao,
    required this.status,
  });

  Produto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    item = json['item'];
    or = json['or'];
    quantidade = json['quantidade'];
    lote = json['lote'];
    codBarras = json['codBarras'];
    localizacao = json['localizacao'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['item'] = item;
    data['or'] = or;
    data['quantidade'] = quantidade;
    data['lote'] = lote;
    data['codBarras'] = codBarras;
    data['localizacao'] = localizacao;
    data['status'] = status;
    return data;
  }
}
