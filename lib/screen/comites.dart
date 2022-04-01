import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoAppBar = 'Comitês';

class Comites extends StatelessWidget {
  final List linkPublicacoes = [
    {
      "titulo": "Bacias do Baixo Ivaí e Paraná 1",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-do-Baixo-Ivai-e-Parana-1",
    },
    {
      "titulo": "COALIAR",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-do-Alto-Iguacu-e-Afluentes-do-Alto-Ribeira-COALIAR",
    },
    {
      "titulo": "Bacia do Rio Tibagi",
      "link": "https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Rio-Tibagi",
    },
    {
      "titulo": "Bacia do Rio Jordão",
      "link": "https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Rio-Jordao",
    },
    {
      "titulo": "Bacia do Paraná 3",
      "link": "https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Parana-3",
    },
    {
      "titulo": "Bacia Litorânea",
      "link": "https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-Litoranea",
    },
    {
      "titulo": "CBH Piraponema",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Comites-das-Bacias-Hidrograficas-dos-rios-Pirapo-Paranapanema-3-e-4-CBH-Piraponema",
    },
    {
      "titulo": "NORTE PIONEIRO",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-dos-rios-das-Cinzas-Itarare-Paranapanema-1-e-Paranapanema-2-NORTE-PIONEIRO",
    },
    {
      "titulo": "Plano de Drenagem do Alto Iguaçu",
      "link":
          "https://www.iat.pr.gov.br/Pagina/Plano-de-Drenagem-do-Alto-Iguacu",
    },
  ];

  Comites({Key? key}) : super(key: key);

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
