import 'package:flutter/material.dart';
import 'package:poc_faq/src/poc_modal/demonstration_modal_page.dart';

class DescriptionModalPage extends StatefulWidget {
  const DescriptionModalPage({Key? key}) : super(key: key);

  @override
  _DescriptionModalPageState createState() => _DescriptionModalPageState();
}

class _DescriptionModalPageState extends State<DescriptionModalPage> {
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
                  'Bottom Sheet Modal',
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
                              'O Bottom Sheet é um componente fornecido pelo Material Design que se comporta como uma caixa de diálogo modal que é aberta a partir da base da tela do dispositivo para cima sendo uma alternativa a um menu ou caixa de diálogo e impede que o usuário interaja com a aplicação.\n\n',
                        ),
                        TextSpan(
                          text:
                              'O Bottom Sheet Modal é exibido por meio da execução de um método específico, no qual pode ser observado abaixo:\n\n',
                        ),
                        TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          text:
                              'showModalBottomSheet(\n    BuildContext context,\n   WidgetBuilder builder,\n)\n\n',
                        ),
                        TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          text: 'Atributos disponíveis:\n\n',
                        ),
                        TextSpan(
                          text:
                              'Color? backgroundColor\ndouble? elevation\nShapeBorder? shape\nClip? chipBehavior\nBoxConstraints? constraints\nColor? barrierColor\nbool isScrollControlled\nbool useRootNavigator\nbool isDismissible\nbool enableDrag\nRouteSettings? routeSettings\nAnimationController? transitionAnimationController',
                        ),
                      ])),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Flutter Modal Bottom Sheet (lib)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                      children: [
                        TextSpan(
                          text:
                              'Essa biblioteca é inspirada no funcionamento do ',
                        ),
                        TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          text: 'showModalBottomSheet ',
                        ),
                        TextSpan(
                          text:
                              'do Material UI, mas apresenta recursos complementares, listados os principais a seguir:\n\n',
                        ),
                        TextSpan(
                          text:
                              '- Suporte para scrollView dentro do modal\n- Suporte para willPopScope para prevenir o fechamento indevido do modal\n-Suporte para modal Cupertino (efeitos iOS13)\n\n',
                        ),
                        TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          text: 'Atributos disponíveis:\n\n',
                        ),
                        TextSpan(
                          text:
                              'bool expand\nbool useRootNavigator\nbool isDismissible\nColor barrierColor\nbool enableDrag\nAnimationController secondAnimation\nbool bounce\nDuration duration\ndouble closeProgressThreshold',
                        ),
                      ])),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Flutter Webview (lib)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                      children: [
                        TextSpan(
                          text:
                              'Biblioteca é desenvolvida e mantida pela equipe do Flutter, onde apresenta comportamento como um Widget comum, se comunicando e relacionando com a árvore de componentes.\n\nSeu uso é indicado para manter a fluidez em fluxos de processos que envolvam páginas web, desse modo, para outros cenários de uso é indicado o uso do navegador do dispositivo.\n\n',
                        ),
                        TextSpan(
                          text:
                              'Existem algumas características e limitações que devem ser consideradas, listados a seguir:\n\n',
                        ),
                        TextSpan(
                          text:
                              '- WebView pode ser composto com outros Widgets\n- Por padrão não possui suporte à JavaScript, sendo necessário habilitar por meio de parâmetros\n- Possui um controller específico e deve ser usado para manipular a interação do WebView com a página acessada\n- Deve ser configurado o Gesture, caso o WebView esteja composto com um ListView, para capturar o gesto de rolar a tela\n- É recomendado o uso do parâmetro key para cenários de múltiplos WebViews\n- Existem duas formas de exibir o WebView no Android, sendo uma híbrida e outra virtual, que exige a versão 20, como mínima de SDK\n- Existem algumas limitações no teclado apresentado no WebView\n\n',
                        )
                      ])),
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
                        builder: (context) => DemonstrationModalPage()));
              },
              child: const Text('Acesse a demonstração'),
            ),
          ],
        ),
      ),
    );
  }
}
