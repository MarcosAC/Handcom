import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:handcom/models/produto.dart';

class ProdutosProvider with ChangeNotifier {
  List<Produto> _produtos = [];
  List<Produto> _produtosMovimentados = [];

  List<Produto> get produtos => _produtos;
  List<Produto> get produtosMovimentados => _produtosMovimentados;

  ProdutosProvider() {
    _carregarProdutos();
  }

  void _carregarProdutos() async {
    String jsonString = await rootBundle.loadString('assets/data/data.json');
    List<dynamic> jsonList = json.decode(jsonString);

    _produtos = jsonList.map((json) => Produto.fromJson(json)).toList();

    notifyListeners();
  }

  void movimentarProduto(Produto produto) {
    _produtos.remove(produto);
    produto.status = 'Movimentado';
    _produtosMovimentados.add(produto);
    notifyListeners();
  }
}
