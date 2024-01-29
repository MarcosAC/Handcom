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
          backgroundColor: Colors.white,
          title: const Text(
            "Itens aguardando movimentação",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.blueGrey,
              ),
            )
          ],
          bottom: const TabBar(
            labelColor: Color(0xff0d47a1),
            tabs: [
              Tab(
                text: "Aguardando Movimentação",
              ),
              Tab(
                text: "Itens Movimentados",
              ),
            ],
          ),
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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFE3F2FD)),
                            icon: const Icon(Icons.filter_alt_outlined, color: Color(0xff0d47a1)),
                            label: const Text("Filtros", style: TextStyle(color: Color(0xff0d47a1))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFE3F2FD)),
                            icon: const Icon(Icons.menu_outlined, color: Color(0xff0d47a1)),
                            label: const Text("Ordenamento", style: TextStyle(color: Color(0xff0d47a1))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff1976d2)),
                          child: const Text("Área de Recebimento"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffffab40)),
                            child: const Text("Área de Quarentena"))
                      ],
                    ),
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
                                        style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1b5e20),
                                        )),
                                  ),
                                  Row(
                                    children: const [
                                      Text("Quarentena ",
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(" Armazenamento",
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text("VERG CA50 10mm RT 12m 2t NV", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
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
                                children: const [
                                  Text("OR: 350", style: TextStyle(fontSize: 10)),
                                  Text("Qtd: 5.682,92 kg ", style: TextStyle(fontSize: 12)),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text("Lote: 439849321249230842384", style: TextStyle(fontSize: 10)),
                              const SizedBox(height: 8),
                              const Text("Código de Barras: 4309283982398239829389218982321234", style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFE3F2FD),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(4), bottomLeft: Radius.circular(4))),
                          child: Center(
                            child: TextButton(
                                onPressed: () {
                                  dialog();
                                },
                                child: const Text(
                                  "Movimentar",
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xff0d47a1)),
                                )),
                          ),
                        )
                      ],
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
              titlePadding: EdgeInsets.zero,
              contentPadding: const EdgeInsets.only(left: 10, top: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          "Movimentação do item",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      IconButton(
                          padding: const EdgeInsets.only(top: 10),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 16,
                          )),
                    ],
                  ),
                  const Divider(),
                ],
              ),
              content: const Text("Para confirmar o armazenamento, do item na Área de armazenamento clique em confirmar."),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff1976d2)),
                    onPressed: () {
                      Navigator.pop(context, 'Confirmar');
                    },
                    child: const Text("Confirmar")),
              ],
            ));
  }
}
