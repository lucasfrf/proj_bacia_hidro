import 'package:flutter/material.dart';
import 'package:proj_bacia_hidro/screen/conteudo/sumario.dart';
import 'package:url_launcher/url_launcher.dart';

const _textoTituloAppBar = 'Projeto Bacia Hidrográfica';
const _imagemLogo = 'images/logoutfpr.png';
const _textoTituloLink = "Link's úteis";
const _textoTituloQuiz = 'Teste seu conhecimento';
const _textoTituloConteudo = 'Conteúdo';
const _textoTituloOutro = 'Outros';
const _textoLink = 'Link';
const _textoQuiz = 'Quiz';
const _textoSumario = 'Sumário';
const _textoRioCidade = 'Rios da cidade';
const _textoJogoMemoria = 'Jogo da memória';
const _textoAna = 'Agência Nacional de Águas (ANA)';
const _textoUTFPR = 'UTFPR Campo Mourão - PR';
const _textoDarthVader = 'Darth Vader';
const String _urlAna = 'https://www.gov.br/ana/pt-br';
const String _urlUTFPR = 'http://www.utfpr.edu.br/campus/campomourao';
const String _urlJogoMemoria1 = 'https://wordwall.net/resource/30746306';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_textoTituloAppBar),
      ),
      body: Column(
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
              const Text(_textoTituloLink),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //_textoLink
                    _FeatureItem(_textoAna, Icons.link, onClick: () {
                      _launchURL(_urlAna);
                    }),
                    _FeatureItem(_textoUTFPR, Icons.link, onClick: () {
                      _launchURL(_urlUTFPR);
                    }),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Text(_textoTituloQuiz),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _FeatureItem(_textoJogoMemoria, Icons.gamepad_outlined,
                        onClick: () {
                      _launchURL(_urlJogoMemoria1);
                    }),
                    _FeatureItem(_textoJogoMemoria, Icons.gamepad_outlined,
                        onClick: () {
                      _launchURL(_urlJogoMemoria1);
                    }),
                    _FeatureItem(_textoJogoMemoria, Icons.gamepad_outlined,
                        onClick: () {
                      _launchURL(_urlJogoMemoria1);
                    }),
                    _FeatureItem(_textoJogoMemoria, Icons.gamepad_outlined,
                        onClick: () {
                      _launchURL(_urlJogoMemoria1);
                    }),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Text(_textoTituloConteudo),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _FeatureItem(_textoDarthVader, Icons.abc,
                        onClick: () => _showDarthVader(context)),
                    _FeatureItem(_textoQuiz, Icons.abc, onClick: () {}),
                    _FeatureItem(_textoSumario, Icons.abc, onClick: () {}),
                    _FeatureItem(_textoRioCidade, Icons.abc, onClick: () {}),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Text(_textoTituloOutro),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _FeatureItem(_textoLink, Icons.abc, onClick: () {}),
                    _FeatureItem(_textoQuiz, Icons.abc, onClick: () {}),
                    _FeatureItem(_textoSumario, Icons.abc, onClick: () {}),
                    _FeatureItem(_textoRioCidade, Icons.abc, onClick: () {}),
                  ],
                ),
              ),
            ],
          ),
        ],
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

void _showDarthVader(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const Sumario()));
}
