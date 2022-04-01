import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';

const _textoAppBar = 'Conteúdo';

class Conteudo extends StatelessWidget {
  const Conteudo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_textoAppBar),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          children: <Widget>[
            FeatureItem(name: 'Sumario', icon: Icons.abc, onClick: () {}),
            FeatureItem(name: 'Bacia Piquiri', icon: Icons.abc, onClick: () {}),
            FeatureItem(name: 'Bacia X', icon: Icons.abc, onClick: () {}),
            FeatureItem(name: 'Bacia y', icon: Icons.abc, onClick: () {}),
            FeatureItem(name: 'Bacia z', icon: Icons.abc, onClick: () {}),
          ],
        ));
  }
}
