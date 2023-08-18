import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AppTexts {
  static FadeInLeft rollingTitles = FadeInLeft(
    duration: const Duration(milliseconds: 1500),
    delay: const Duration(milliseconds: 2700),
    child: AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText('Desenvolvedor Mobile',
            textStyle: AppTextStyles.montseratStyle(color: Colors.yellow)),
        TyperAnimatedText('Desenvolvedor Flutter',
            textStyle: AppTextStyles.montseratStyle(
                color: const Color.fromARGB(255, 32, 154, 255))),
        TyperAnimatedText('Eng. de Software',
            textStyle: AppTextStyles.montseratStyle(color: Colors.orange)),
        TyperAnimatedText('Amante da Tecnologia',
            textStyle: AppTextStyles.montseratStyle(color: Colors.red)),
        TyperAnimatedText('Aluno Dedicado',
            textStyle: AppTextStyles.montseratStyle(color: Colors.purple)),
        TyperAnimatedText('Futuro Tech Lead',
            textStyle: AppTextStyles.montseratStyle(color: Colors.green)),
      ],
      pause: const Duration(milliseconds: 1000),
      stopPauseOnTap: true,
      displayFullTextOnTap: true,
    ),
  );

  static AutoSizeText aboutMeText = AutoSizeText(
      'Um entusiasta da tecnologia e desenvolvedor mobile especializado em Flutter e Dart,'
      ' sou de Maringá – PR. Com formação em Administração de Empresas pela Universidade'
      ' Estadual de Maringá e atual graduação em Engenharia de Software pela UniCesumar, '
      'combino minha paixão pela tecnologia com uma abordagem orientada a objetivos e '
      'resultados. Trago ao meu trabalho valores como respeito, criatividade e pontualidade'
      ', e tenho como objetivo criar experiências significativas através da tecnologia. ',
      style: AppTextStyles.normalStyle().copyWith(fontSize: 18),
      textAlign: TextAlign.justify,
      overflow: TextOverflow.clip);

  static AutoSizeText introText = AutoSizeText(
      'Neste portfólio, você encontrará projetos que refletem minha jornada no mundo da tecnologia. '
      'Cada um deles é uma expressão do meu entusiasmo e do desejo genuíno de aprender e crescer nesta área. '
      'Tenho uma forte inclinação para a tecnologia e estou comprometido em continuar meu desenvolvimento neste '
      'campo. Ao explorar meu trabalho, espero que você perceba a paixão e dedicação que coloco em cada projeto. '
      'Seja bem-vindo ao meu portfólio e obrigado por considerar minha trajetória!',
      style: AppTextStyles.normalStyle().copyWith(fontSize: 18),
      textAlign: TextAlign.justify,
      overflow: TextOverflow.clip);

  static AutoSizeText stacks = AutoSizeText(
      'Stacks: Flutter, Dart, Rest API client, Null Safety, Widgets, Stateless, '
      'Stateful, HTML5, CSS3, HTTP, Javascript, CRUD, SQLite, Linguagem C, Git, '
      'BloC Provider, Persistência de Dados, Animações Implícitas e Controladas, '
      'Programação Orientada a Objetos, Regex, Postman, Sourcetree, VS code, Android Studio.',
      style: AppTextStyles.normalStyle()
          .copyWith(fontSize: 19, fontWeight: FontWeight.bold),
      textAlign: TextAlign.justify,
      overflow: TextOverflow.clip);

  static Text growing = Text(
    'Na vanguarda da transformação digital, reconheço a importância de alinhar tecnologia com '
    'estratégia para obter resultados tangíveis. Como graduado em Administração de Empresas e '
    'futuro Engenheiro de Software, combino perspectivas de negócios e técnicas para impulsionar '
    'o crescimento. ',
    style: AppTextStyles.normalStyle(),
    textAlign: TextAlign.justify,
  );

  static Text appDeveloper = Text(
    'Com expertise em Dart e Flutter, tenho experiência no desenvolvimento '
    'de soluções mobile. Meu foco é sempre na criação de aplicativos intuitivos e de alto desempenho,'
    ' utilizando as melhores práticas e ferramentas disponíveis. Minha paixão é transformar ideias em '
    'realidade digital, criando soluções que atendam e superem as expectativas dos usuários.',
    style: AppTextStyles.normalStyle(),
    textAlign: TextAlign.justify,
  );

  static Text uxUi = Text(
    'O design de UX/UI não é apenas sobre estética, mas sim sobre criar experiências memoráveis'
    ' e eficientes para os usuários. Com um olhar atento aos detalhes e uma abordagem centrada no '
    'usuário, busco projetar interfaces que são não apenas agradáveis aos olhos, mas também intuitivas'
    ' e fáceis de usar. Cada elemento é cuidadosamente considerado para garantir que os usuários tenham '
    'uma experiência fluida e agradável.',
    style: AppTextStyles.normalStyle(),
    textAlign: TextAlign.justify,
  );
  static AutoSizeText snakeText = AutoSizeText(
    'Em julho de 2022, iniciei o desenvolvimento do GameSnake'
    ' em parceria com meu amigo Eric, que é especialista em sistemas embarcados. Utilizamos a biblioteca '
    'Allegro, facilitando a criação de gráficos e sons. A estrutura modular do código, a gestão eficiente'
    ' de recursos e a manipulação orientada a eventos foram características marcantes. Além dos aspectos '
    'técnicos, o jogo inclui um sistema de registros para pontuações records. A colaboração com um amigo experiente '
    'em C transformou este projeto em uma experiência de aprendizado enriquecedora e divertida.',
    textAlign: TextAlign.justify,
    minFontSize: 12,
    style: GoogleFonts.mukta(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
  static AutoSizeText iotCarText = AutoSizeText(
    'Em um projeto colaborativo com meu amigo Eric, estamos atualmente '
    'desenvolvendo um carrinho de brinquedo com uma característica especial: sua integração direta com um aplicativo '
    'Flutter. Projetei e implementei este aplicativo que, por meio de um joystick virtual na tela, '
    'envia comandos ao carrinho em tempo real. O coração dessa comunicação ágil é a nossa integração'
    ' com o Firebase Realtime Database. Cada movimento do joystick é traduzido em coordenadas X e Y, '
    'e imediatamente transmitido ao Firebase. O carrinho, por sua vez, lê essas informações e reage '
    'de acordo. Esse fluxo contínuo de dados entre o aplicativo e o carrinho oferece um controle preciso '
    'e dinâmico. Mesmo ainda em desenvolvimento, este projeto já demonstrou o imenso potencial '
    'do Firebase em conectar diferentes plataformas.',
    textAlign: TextAlign.justify,
    minFontSize: 12,
    style: GoogleFonts.mukta(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}

class DesafioText extends StatelessWidget {
  final double fontTextSize;

  const DesafioText({super.key, required this.fontTextSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          '→ Suporte a temas claro e escuro.',
          textAlign: TextAlign.right,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        AutoSizeText(
          '→ Uso do pacote provider para gerenciamento de estado.',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        AutoSizeText(
          '→ Modularização e componentização para reutilização e manutenção.',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        AutoSizeText(
          '→ Uso de fontes personalizadas e ativos de imagem.',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        AutoSizeText(
          '→ Animações e transições suaves entre telas.',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        AutoSizeText(
          '→ Layouts responsivos e bem pensados.',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: GoogleFonts.mukta(
            fontSize: fontTextSize,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class RemediandoText {
  final double fontTextSize;

  RemediandoText({required this.fontTextSize});

  Text get remediandoInfo {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.mukta(
          fontSize: fontTextSize,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        children: const <TextSpan>[
          TextSpan(
              text:
                  'No desenvolvimento deste aplicativo, adotei a arquitetura '),
          TextSpan(
            text: 'BLoC',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text: ' para gerenciar o estado. Isso me '
                  'permitiu separar claramente a lógica de negócios da interface '
                  'do usuário. Além disso, integrei o aplicativo com o '),
          TextSpan(
            text: 'SQLite',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(text: ' usando o pacote '),
          TextSpan(
            text: 'sqflite',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text: ', desenvolvendo um helper de banco de dados para '
                  'facilitar as operações de '),
          TextSpan(
            text: 'CRUD',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text: '. Dei especial atenção ao modelo de dados,'
                  ' criando uma estrutura robusta para medicamentos, que reflete minha compreensão '
                  'em '),
          TextSpan(
            text: 'programação orientada a objetos',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text: '. A interface do usuário foi projetada para ser '
                  'interativa e amigável, incorporando '),
          TextSpan(
            text: 'animações',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text: ' e um calendário interativo para uma experiência'
                  ' intuitiva. A modularidade foi uma prioridade, estruturando o aplicativo em componentes '
                  'separados e arquivos específicos, o que facilita a manutenção e futuras expansões. '
                  'Com um foco claro no gerenciamento de medicamentos, o aplicativo oferece'
                  ' funcionalidades abrangentes, desde a visualização diária até a edição e '),
          TextSpan(
            text: 'notificações',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.white,
                decorationThickness: 3.0),
          ),
          TextSpan(
              text:
                  '. Por último, mas não menos importante, a estética e o design '
                  'desempenharam um papel crucial. Investi tempo para garantir que a aplicação'
                  ' não fosse apenas funcional, mas também visualmente atraente.'),
        ],
      ),
      textAlign: TextAlign.justify,
    );
  }
}
