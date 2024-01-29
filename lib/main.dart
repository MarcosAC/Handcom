import 'package:flutter/material.dart';
import 'package:handcom/provider/produtos_provider.dart';
import 'package:handcom/screens/aguardando_movimentacao.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProdutosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AguardandoMovimentacao(),
      ),
    );
  }
}
