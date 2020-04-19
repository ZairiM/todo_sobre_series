import 'package:meta/meta.dart';

class Capitulo {
  Capitulo({
    @required this.title,
    @required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final List<Capitulo> capitulos = <Capitulo>[
  Capitulo(
    title: 'Nombre del episodio 1',
    subtitle: 'Esta es una breve \n descripcion del episodio 1',
  ),
  Capitulo(
    title: 'Nombre del episodio 2',
    subtitle: 'Esta es una breve \n descripcion del episodio 2',
  ),
  Capitulo(
    title: 'Nombre del episodio 3',
    subtitle: 'Esta es una breve \n descripcion del episodio 3',
  ),
  Capitulo(
    title: 'Nombre del episodio 4',
    subtitle: 'Esta es una breve \n descripcion del episodio 4',
  ),
  Capitulo(
    title: 'Nombre del episodio 5',
    subtitle: 'Esta es una breve \n descripcion del episodio 5',
  ),
  Capitulo(
    title: 'Nombre del episodio 6',
    subtitle: 'Esta es una breve \n descripcion del episodio 6',
  ),
];
