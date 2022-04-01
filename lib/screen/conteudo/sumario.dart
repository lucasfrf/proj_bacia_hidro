import 'package:flutter/material.dart';

const _textoTituloAppBar = 'Darth Vader';
const _imagemLogo = 'images/darthVader.jpg';
const String _conteudoDarthVader =
    'Darth Vader (anteriormente chamado Anakin Skywalker) '
    'é um dos personagens centrais da série de filmes Star Wars '
    '(Guerra nas Estrelas), tendo sido um dos protagonistas, '
    'juntamente com Obi-Wan Kenobi, da trilogia prequel '
    '(mas se tornando o vilão secundário no terceiro '
    'filme após a morte do General Grievous), '
    'um dos antagonistas principais da trilogia original ao '
    'lado do Imperador Palpatine (porém acaba se redimindo '
    'no final), e um anti-herói póstumo na trilogia de sequência, '
    'sendo que suas ações ainda afetam o universo de Star Wars, '
    'sendo para o bem ou para o mal, principalmente quando se '
    'trata de seu neto, Ben Solo, o Kylo Ren, que tem por Vader '
    'uma admiração cega, e deseja mais do que tudo ser como ele '
    '(e até superá-lo) '
    '                                               '
    '                      '
    'Darth Vader (anteriormente chamado Anakin Skywalker) '
    'é um dos personagens centrais da série de filmes Star Wars '
    '(Guerra nas Estrelas), tendo sido um dos protagonistas, '
    'juntamente com Obi-Wan Kenobi, da trilogia prequel '
    '(mas se tornando o vilão secundário no terceiro '
    'filme após a morte do General Grievous), '
    'um dos antagonistas principais da trilogia original ao '
    'lado do Imperador Palpatine (porém acaba se redimindo '
    'no final), e um anti-herói póstumo na trilogia de sequência, '
    'sendo que suas ações ainda afetam o universo de Star Wars, '
    'sendo para o bem ou para o mal, principalmente quando se '
    'trata de seu neto, Ben Solo, o Kylo Ren, que tem por Vader '
    'uma admiração cega, e deseja mais do que tudo ser como ele '
    '(e até superá-lo) '
    '                                               '
    '                      '
    'Darth Vader (anteriormente chamado Anakin Skywalker) '
    'é um dos personagens centrais da série de filmes Star Wars '
    '(Guerra nas Estrelas), tendo sido um dos protagonistas, '
    'juntamente com Obi-Wan Kenobi, da trilogia prequel '
    '(mas se tornando o vilão secundário no terceiro '
    'filme após a morte do General Grievous), '
    'um dos antagonistas principais da trilogia original ao '
    'lado do Imperador Palpatine (porém acaba se redimindo '
    'no final), e um anti-herói póstumo na trilogia de sequência, '
    'sendo que suas ações ainda afetam o universo de Star Wars, '
    'sendo para o bem ou para o mal, principalmente quando se '
    'trata de seu neto, Ben Solo, o Kylo Ren, que tem por Vader '
    'uma admiração cega, e deseja mais do que tudo ser como ele '
    '(e até superá-lo) ';

class Sumario extends StatelessWidget {
  const Sumario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_textoTituloAppBar),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(_imagemLogo),
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.vertical, child: Text(_conteudoDarthVader)),
        ],
      ),
    );
  }
}
