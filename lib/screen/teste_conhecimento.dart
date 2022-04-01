import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoAppBar = 'Teste seu conhecimento';
const _linkJogo1 = 'https://wordwall.net/resource/30746306';

class TesteConhecimento extends StatelessWidget {
  const TesteConhecimento({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

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
            FeatureItem(
                name: 'Jogo 1',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
            FeatureItem(
                name: 'Jogo 2',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
            FeatureItem(
                name: 'Jogo 3',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
            FeatureItem(
                name: 'Jogo 4',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
            FeatureItem(
                name: 'Jogo 5',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
            FeatureItem(
                name: 'Jogo 6',
                icon: Icons.videogame_asset_rounded,
                onClick: () => _launchURL(_linkJogo1)),
          ],
        ));
  }
}
