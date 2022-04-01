import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoAppBar = 'Informações gerais';

class LinkInformacoesGerais extends StatelessWidget {
  final List linkPublicacoes = [
    {
      "titulo": "Mapas e Dados Espaciais",
      "link": "https://www.iat.pr.gov.br/Pagina/Mapas-e-Dados-Espaciais",
    },
    {
      "titulo": "Dados e informações Geoespaciais Temáticos",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Dados-e-Informacoes-Geoespaciais-Tematicos",
    },
    {
      "titulo": "Dados geoespaciais de referência",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Dados-geoespaciais-de-referencia",
    },
  ];

  LinkInformacoesGerais({Key? key}) : super(key: key);

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
