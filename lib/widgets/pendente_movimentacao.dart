import 'package:flutter/material.dart';
import 'package:handcom/provider/produtos_provider.dart';
import 'package:provider/provider.dart';

class PendenteMovimentacao extends StatelessWidget {
  const PendenteMovimentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProdutosProvider>(
      builder: (context, provider, _) {
        return ListView.builder(
          itemCount: provider.produtos.length,
          itemBuilder: (context, index) {
            final produto = provider.produtos[index];
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
                              child: const Text("DISPONÍVEL PARA ARMAZENAMENTO",
                                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Color(0xff1b5e20))),
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
                            //dialog();
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
}
