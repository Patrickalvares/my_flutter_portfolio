import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
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

  static Text aboutMeText = Text(
    'Um entusiasta da tecnologia e desenvolvedor mobile especializado em Flutter e Dart,'
    ' sou de Maringá – PR. Com formação em Administração de Empresas pela Universidade'
    ' Estadual de Maringá e atual graduação em Engenharia de Software pela UniCesumar, '
    'combino minha paixão pela tecnologia com uma abordagem orientada a objetivos e '
    'resultados. Trago ao meu trabalho valores como respeito, criatividade e pontualidade'
    ', e tenho como objetivo criar experiências significativas através da tecnologia. ',
    style: AppTextStyles.normalStyle().copyWith(fontSize: 18),
    textAlign: TextAlign.justify,
  );

  static Text introText = Text(
    'Neste portfólio, você encontrará projetos que refletem minha jornada no mundo da tecnologia. '
    'Cada um deles é uma expressão do meu entusiasmo e do desejo genuíno de aprender e crescer nesta área. '
    'Tenho uma forte inclinação para a tecnologia e estou comprometido em continuar meu desenvolvimento neste '
    'campo. Ao explorar meu trabalho, espero que você perceba a paixão e dedicação que coloco em cada projeto. '
    'Seja bem-vindo ao meu portfólio e obrigado por considerar minha trajetória!',
    style: AppTextStyles.normalStyle().copyWith(fontSize: 18),
    textAlign: TextAlign.justify,
  );

  static Text stacks = Text(
    'Stacks: Flutter, Dart, Rest API client, Null Safety, Widgets, Stateless, '
    'Stateful, HTML5, CSS3, HTTP, Javascript, CRUD, SQLite, Linguagem C, Git, '
    'BloC Provider, Persistência de Dados, Animações Implícitas e Controladas, '
    'Programação Orientada a Objetos, Regex, Postman, Sourcetree, VS code, Android Studio.',
    style: AppTextStyles.normalStyle()
        .copyWith(fontSize: 19, fontWeight: FontWeight.bold),
    textAlign: TextAlign.justify,
  );
}
