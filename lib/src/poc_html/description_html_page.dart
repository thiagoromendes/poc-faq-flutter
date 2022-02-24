import 'package:flutter/material.dart';
import 'package:poc_faq/src/poc_html/demonstration_html_page.dart';

class DescriptionHTMLPage extends StatefulWidget {
  const DescriptionHTMLPage({Key? key}) : super(key: key);

  @override
  _DescriptionHTMLPageState createState() => _DescriptionHTMLPageState();
}

class _DescriptionHTMLPageState extends State<DescriptionHTMLPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Considerações Teóricas'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Flutter HTML (lib)',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                        children: [
                          TextSpan(
                            text:
                                'Este pacote foi projetado ser simples, para permitir a renderização básica de conteúdo HTML na árvore de widgets Flutter, porém o projeto foi expandido para incluir suporte para estilos básicos também.\n\n',
                          ),
                          TextSpan(
                            text:
                                'Caso seja necessário de algo mais robusto e personalizável, é possível usar as APIs personalizadas para controle extremamente granular sobre a renderização do widget.\n\n',
                          ),
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            text: 'Atributos disponíveis:\n\n',
                          ),
                          TextSpan(
                            text:
                                'data - conteúdo HTML\ndocument - DOM HTML\nonLinkTap - função ao tocar em um link HTML\ncustomRender - tag personalizada\nonImageError - tratar erro\nonMathError - tratar erro\nshrinkWrap\nonImageTap - função ao tocar em imagem HTML\ntagsList - lista de tags personalizadas\nstyle - aplica estilo nas tags HTML\nnavigationDelegateForIframe - define o router default\ncustomImageRender - como as imagens são carregadas\nselectionControls - controle de seleção de texto',
                          ),
                        ])),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DemonstrationHTMLPage()));
                },
                child: const Text('Acesse a demonstração'),
              ),
            ],
          ),
        ));
  }
}
