import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:handcom/models/produto.dart';

class ProdutosProvider with ChangeNotifier {
  List<Produto> _produtos = [];

  List<Produto> get produtos => _produtos;

  ProdutosProvider() {
    _carregarProdutos();
  }

  void _carregarProdutos() {
    String jsonString = '...';
    List<dynamic> jsonList = json.decode(jsonString);

    _produtos = jsonList.map((json) => Produto.fromJson(json)).toList();

    notifyListeners();
  }

  void movimentarProduto(Produto produto) {
    notifyListeners();
  }
}
