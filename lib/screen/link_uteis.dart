import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/componentes/feature_item.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoAppBar = 'Bacias hidrográficas do Paraná';
const _textoComite1 = 'Bacias do Baixo Ivaí e Paraná 1';
const _linkComite1 =
    'https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-do-Baixo-Ivai-e-Parana-1';
const _textoComite2 = 'COALIAR';
const _linkComite2 =
    'https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-do-Alto-Iguacu-e-Afluentes-do-Alto-Ribeira-COALIAR';
const _textoComite3 = 'Bacia do Rio Tibagi';
const _linkComite3 =
    'https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Rio-Tibagi';
const _textoComite4 = 'Bacia do Rio Jordão';
const _linkComite4 =
    'https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Rio-Jordao';
const _textoComite5 = 'Bacia do Paraná 3';
const _linkComite5 =
    'https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-do-Parana-3';
const _textoComite6 = 'Bacia Litorânea ';
const _linkComite6 =
    'https://www.iat.pr.gov.br/Pagina/Comite-da-Bacia-Litoranea';
const _textoComite7 = 'CBH Piraponema';
const _linkComite7 =
    'https://www.iat.pr.gov.br/Pagina/Comites-das-Bacias-Hidrograficas-dos-rios-Pirapo-Paranapanema-3-e-4-CBH-Piraponema';
const _textoComite8 = 'NORTE PIONEIRO';
const _linkComite8 =
    'https://www.iat.pr.gov.br/Pagina/Comite-das-Bacias-dos-rios-das-Cinzas-Itarare-Paranapanema-1-e-Paranapanema-2-NORTE-PIONEIRO';
const _textoComite9 = 'Plano de Drenagem do Alto Iguaçu ';
const _linkComite9 =
    'https://www.iat.pr.gov.br/Pagina/Plano-de-Drenagem-do-Alto-Iguacu';

class LinkUteis extends StatelessWidget {
  final List cardapio = [
    {
      "titulo": "Bolo Cocada",
      "preco": 30,
      "precof": "R\$ 30,00",
      "foto": "boloCocada.jpg",
      "descricao":
          "Bolo cocada, pra quem gosta de sentir o sabor do coco. Muito bom, crocante com a massa leve e úmida."
    },
    {
      "titulo": "Bolo de Banana",
      "preco": 28,
      "precof": "R\$ 28,00",
      "foto": "boloBanana.jpg",
      "descricao":
          "Clássico bolo de banana, uma delícia de sabor. Um bolo macio com uma calda de bana com canela que só de falar deixa com água na boca."
    },
    {
      "titulo": "Bolo vulcão de leite ninho",
      "preco": 35,
      "precof": "R\$ 35,00",
      "foto": "boloNinhoVulcao.jpg",
      "descricao":
          "Bolo tipo vulcão, que derrete de sabor. As crianças de todas as idades vão adorar."
    },
    {
      "titulo": "Mini Pizza",
      "preco": 15,
      "precof": "R\$ 15,00",
      "foto": "miniPizza.jpg",
      "descricao":
          "Kit com 10 mini pizza de presunto e queijo para um lanchinho rápido."
    },
    {
      "titulo": "Cueca virada",
      "preco": 18,
      "precof": "R\$ 18,00",
      "foto": "cuecaVirada.jpg",
      "descricao":
          "Bolinho também chamado de orelha de gato, polvilhado com açucar de confeiteiro para incrementar seu café da tarde."
    },
    {
      "titulo": "Bolacha de Maizena",
      "preco": 22,
      "precof": "R\$ 22,00",
      "foto": "bolachaMaizenaGoiabada.jpg",
      "descricao":
          "Bolacha de maizena é ideal com café da tarde, café da manhã e até mesmo com um chimarrão."
    },
    {
      "titulo": "Bolacha de Manteiga",
      "preco": 22,
      "precof": "R\$ 22,00",
      "foto": "bolachaManteiga.jpg",
      "descricao":
          "Bolacha de manteiga acompanha seu pão de forma no café da tarde."
    },
    {
      "titulo": "Bolinha de queijo",
      "preco": 20,
      "precof": "R\$ 20,00",
      "foto": "salgadoBolinhaQueijo.jpg",
      "descricao":
          "Kit com 18 bolinhas de queijo congeladas, basta tirar da embalagem, fritar e se deliciar."
    },
    {
      "titulo": "Coxinha de frango",
      "preco": 20,
      "precof": "R\$ 20,00",
      "foto": "salgadoCoxinha.jpg",
      "descricao":
          "Kit com 18 coxinhas de frango congeladas, basta tirar da embalagem, fritar e se deliciar."
    },
    {
      "titulo": "Risoles de carne",
      "preco": 20,
      "precof": "R\$ 20,00",
      "foto": "salgadoRisolesCarne.jpg",
      "descricao":
          "Kit com 18 risoles de carne congeladas, basta tirar da embalagem, fritar e se deliciar."
    },
  ];

  LinkUteis({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_textoAppBar),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
              child: Center(child: FeatureItem(onClick: () {})),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }
}
