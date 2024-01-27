import 'package:flutter/material.dart';

class AguardandoMovimentacao extends StatefulWidget {
  const AguardandoMovimentacao({super.key});

  @override
  State<AguardandoMovimentacao> createState() => _AguardandoMovimentacaoState();
}

class _AguardandoMovimentacaoState extends State<AguardandoMovimentacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itens aguardando movimentação'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
          )
        ],
      ),
      body: Column(),
    );
  }
}
