import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/screen/comites.dart';
import 'package:proj_bacia_hidro/screen/conteudo.dart';
import 'package:proj_bacia_hidro/screen/link_informacoes_gerais.dart';
import 'package:proj_bacia_hidro/screen/publicacoes.dart';
import 'package:proj_bacia_hidro/screen/teste_conhecimento.dart';
import 'package:proj_bacia_hidro/screen/video_list.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoTituloAppBar = 'Projeto Bacia Hidrográfica';
const _imagemLogo = 'images/logoutfpr.png';
const _textoTituloLinkPub = 'Publicações';
const _textoTituloQuiz = 'Teste seu conhecimento';
const _textoTituloConteudo = 'Conteúdo';
const _textoTituloVideo = 'Vídeos';
const _textoTituloFeatures = 'Dashboard';
const _textoTituloLinks = "Link's úteis";
const _textoTituloComites = 'Comitês';
const _textoTituloGerais = 'Informações gerais';
const _textoTituloITCG = 'ITCG';
const _inkITCG =
    'http://www.geoitcg.pr.gov.br/geoitcg/pages/templates/initial_public.jsf?windowId=55f';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_textoTituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(_imagemLogo),
                ),
              ),
            ),
            Column(
              children: [
                const Text(_textoTituloFeatures),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _FeatureItem(_textoTituloConteudo, Icons.abc,
                          onClick: () => _showConteudo(context)),
                      _FeatureItem(_textoTituloQuiz, Icons.videogame_asset,
                          onClick: () => _showTesteConhecimento(context)),
                      _FeatureItem(_textoTituloVideo, Icons.video_collection,
                          onClick: () => _showVideo(context)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(_textoTituloLinks),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _FeatureItem(_textoTituloLinkPub, Icons.link,
                          onClick: () => _showLinkPub(context)),
                      _FeatureItem(_textoTituloComites, Icons.link,
                          onClick: () => _showComite(context)),
                      _FeatureItem(_textoTituloGerais, Icons.link,
                          onClick: () => _showInfGer(context)),
                      _FeatureItem(_textoTituloITCG, Icons.link,
                          onClick: () => _launchURL(_inkITCG)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  const _FeatureItem(this.name, this.icon, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 100,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showConteudo(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Conteudo()));
}

void _showVideo(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const VideoList()));
}

void _showLinkPub(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Publicacoes()));
}

void _showComite(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => Comites()));
}

void _showInfGer(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LinkInformacoesGerais()));
}

void _showTesteConhecimento(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const TesteConhecimento()));
}
