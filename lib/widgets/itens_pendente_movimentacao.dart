import 'package:flutter/material.dart';
import 'package:handcom/models/produto.dart';
import 'package:handcom/provider/produtos_provider.dart';
import 'package:provider/provider.dart';

class ItensPendenteMovimentacao extends StatelessWidget {
  const ItensPendenteMovimentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProdutosProvider>(
      builder: (context, provider, _) {
        final produtos = provider.produtosFiltrados.isNotEmpty ? provider.produtosFiltrados : provider.produtos;

        return ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(color: Color(0xff9fe5cb)),
                              child: Text(produto.localizacao.toString(),
                                  style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Color(0xff1b5e20))),
                            ),
                            Row(
                              children: const [
                                Text("Quarentena ", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
                                Text(" Armazenamento", style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(produto.item.toString(), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        const Text("(110006889)", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("OR: ${produto.or.toString()}", style: const TextStyle(fontSize: 10)),
                            Text("Qtd: ${produto.quantidade.toString()}", style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text("Lote: ${produto.lote.toString()}", style: const TextStyle(fontSize: 10)),
                        const SizedBox(height: 8),
                        Text("Código de Barras: ${produto.lote.toString()}", style: const TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFE3F2FD), borderRadius: BorderRadius.only(bottomRight: Radius.circular(4), bottomLeft: Radius.circular(4))),
                    child: Center(
                      child: TextButton(
                          onPressed: () {
                            dialog(context, provider, produto);
                          },
                          child: const Text("Movimentar",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0d47a1),
                              ))),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  dialog(BuildContext context, ProdutosProvider provider, Produto produto) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
                titlePadding: EdgeInsets.zero,
                contentPadding: const EdgeInsets.only(left: 10, top: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                title: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text("Movimentação do item", style: TextStyle(fontSize: 14)),
                      ),
                      IconButton(
                          padding: const EdgeInsets.only(top: 10),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close, size: 16)),
                    ]),
                    const Divider(),
                  ],
                ),
                content: const Text("Para confirmar o armazenamento, do item na Área de armazenamento clique em confirmar."),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff1976d2)),
                      onPressed: () {
                        provider.movimentarProduto(produto);
                        Navigator.pop(context, 'Confirmar');
                      },
                      child: const Text("Confirmar")),
                ]));
  }
}
