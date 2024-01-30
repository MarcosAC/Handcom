import 'package:flutter/material.dart';
import 'package:handcom/provider/produtos_provider.dart';
import 'package:handcom/widgets/itens_movimentados.dart';
import 'package:handcom/widgets/itens_pendente_movimentacao.dart';
import 'package:provider/provider.dart';

class AguardandoMovimentacao extends StatefulWidget {
  const AguardandoMovimentacao({super.key});

  @override
  State<AguardandoMovimentacao> createState() => _AguardandoMovimentacaoState();
}

class _AguardandoMovimentacaoState extends State<AguardandoMovimentacao> {
  bool isVisible = false;
  bool click = false;

  visible() {
    setState(() {
      isVisible = true;
      click = true;
    });

    if (isClecked()) {
      setState(() {
        isVisible = true;
        click = true;
      });
    }
  }

  bool isClecked() {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final produtosProvider = Provider.of<ProdutosProvider>(context);

    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text("Itens aguardando movimentação", style: TextStyle(color: Colors.black)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined, color: Colors.blueGrey),
                )
              ],
              bottom: const PreferredSize(
                preferredSize: Size(double.infinity, kToolbarHeight),
                child: ColoredBox(
                  color: Colors.white,
                  child: TabBar(
                    indicator: BoxDecoration(color: Color(0xffb3ccff)),
                    labelColor: Color(0xff0d47a1),
                    tabs: [
                      Tab(text: "Aguardando Movimentação"),
                      Tab(text: "Itens Movimentados"),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(children: [
              Expanded(
                flex: 2,
                child: Padding(
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
                                onPressed: () {
                                  visible();
                                },
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
                      Visibility(
                        visible: isVisible,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  produtosProvider.filtrarPorLocalizacao('DISPONÍVEL PARA ARMAZENAMENTO');
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff1976d2)),
                                child: const Text("Área de Recebimento"),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                  onPressed: () {
                                    produtosProvider.filtrarPorLocalizacao('QUARENTENA');
                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffffab40)),
                                  child: const Text("Área de Quarentena"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("Itens Encontrados: 132"), Text("Peso: 188.544,01 kg")],
                      ),
                      const SizedBox(height: 10),
                      const Expanded(flex: 10, child: ItensPendenteMovimentacao()),
                    ],
                  ),
                ),
              ),
              const ItensMovimentados(),
            ])));
  }
}
