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
                //crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Itens Encontrados: 132"),
                      Text("Peso: 188.544,01 kg"),
                    ],
                  )
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
}
