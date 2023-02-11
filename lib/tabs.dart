import 'package:flutter/material.dart';

class ManejoTabs extends StatefulWidget {
  const ManejoTabs({super.key});

  @override
  State<ManejoTabs> createState() => _ManejoTabsState();
}

class _ManejoTabsState extends State<ManejoTabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      //color: Colors.blue[100],
      child: Column(
        children: <Widget>[
          DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicator: const BoxDecoration(color: Colors.black),
              tabs: const [
                Tab(text: 'Cursos'),
                Tab(text: 'Workshops'),
                Tab(text: 'Especialidades'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                ContenUno(),
                ContenDos(),
                ContenTres(),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContenUno extends StatelessWidget {
  const ContenUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'Curso de TypeScript',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        '¡Aprende TypeScript, el superset de Microsoft para agregar tipado fuerte a tu código JavaScript! '
            'Conoce los datos primitivos y especiales del lenguaje para programar aplicaciones web, '
            'agilizar su mantenimiento y evitar la mayoría de errores.',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}

class ContenDos extends StatelessWidget {
  const ContenDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'CoderHouse',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        'En este curso aprenderás a crear tu sitio web partiendo del prototipo en papel. '
            'Te sumergirás en las mejores prácticas del desarrollo web, trabajando con HTML y CSS. '
            'Conocerás herramientas para optimizar al máximo tu sitio web, implementando prácticas '
            'de versionado de código con GIT, y preprocesadores como SASS.',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}

class ContenTres extends StatelessWidget {
  const ContenTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text(
        'Programador en Flutter',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30, //¿Cómo cambiar color?
        ),
      ),
      Text(
        'Flutter es el framework de Google para desarrollar interfaces móviles nativas en iOS y Android, '
            'basado en los principios de Material Design y Cupertino (iOS) tendrás un look and feel totalmente natural en tus aplicaciones. '
            'Desarrolla aplicaciones móviles nativas de alta calidad y mucho más rápido usando Flutter.',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20, //¿Cómo cambiar color?
        ),
      ),
    ]);
  }
}