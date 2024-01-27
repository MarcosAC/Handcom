import 'package:flutter/material.dart';

class AguardandoMovimentacao extends StatefulWidget {
  const AguardandoMovimentacao({super.key});

  @override
  State<AguardandoMovimentacao> createState() => _AguardandoMovimentacaoState();
}

class _AguardandoMovimentacaoState extends State<AguardandoMovimentacao> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Itens aguardando movimentação"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: "Aguardando Movimentação",
            ),
            Tab(
              text: "Itens Movimentados",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_alt_outlined),
                        label: const Text("Filtros"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.menu_outlined),
                        label: const Text("Ordenamento"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text("Área de Recebimento")),
                      const SizedBox(width: 10),
                      ElevatedButton(onPressed: () {}, child: const Text("Área de Quarentena"))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Itens Encontrados: 132"),
                      Text("Peso: 188.544,01 kg"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("DISPONÍVEL PARA ARMAZENAMENTO", style: TextStyle(fontSize: 8)),
                              Row(
                                children: const [
                                  Text("Quarentena ", style: TextStyle(fontSize: 8)),
                                  Text(" Armazenamento", style: TextStyle(fontSize: 8)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text("VERG CA50 10mm RT 12m 2t NV", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          const Text("(110006889)", style: TextStyle(fontSize: 10)),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("OR: 350", style: TextStyle(fontSize: 10)),
                              Text("Qtd: 5.682,92 kg ", style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text("Lote: 439849321249230842384", style: TextStyle(fontSize: 10)),
                          const SizedBox(height: 8),
                          const Text("Código de Barras: 4309283982398239829389218982321234", style: TextStyle(fontSize: 10)),
                          Center(
                            child: TextButton(
                                onPressed: () {
                                  dialog();
                                },
                                child: const Text("Movimentar")),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("Itens Movimentados"),
            ),
          ],
        ),
      ),
    );
  }

  dialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Movimentação do item",
                    style: TextStyle(fontSize: 14),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 16,
                      )),
                ],
              ),
              content: const Text("Para confirmar o armazenamento, do item na Área de armazenamento clique em confirmar."),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, 'Confirmar');
                    },
                    child: const Text("Confirmar")),
              ],
            ));
  }
}
