import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoAppBar = 'Publicações';

class Publicacoes extends StatelessWidget {
  final List linkPublicacoes = [
    {
      "titulo": "O Paraná e suas águas",
      "link": "https://www.iat.pr.gov.br/Pagina/O-Parana-e-suas-aguas",
    },
    {
      "titulo": "Coletânea de Mapas Históricos do Paraná",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Coletanea-de-Mapas-Historicos-do-Parana",
    },
  ];

  Publicacoes({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_textoAppBar),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: linkPublicacoes.length,
            itemBuilder: (BuildContext context, int index) {
              String linkPub = linkPublicacoes[index]['link'];
              String publicacao = linkPublicacoes[index]['titulo'];
              return SizedBox(
                width: double.maxFinite,
                height: 100,
                child: FeatureItem(
                    name: publicacao,
                    icon: Icons.link,
                    onClick: () => _launchURL(linkPub)),
              );
            }));
  }
}
