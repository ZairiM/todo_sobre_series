import 'package:meta/meta.dart';

class Item {
  Item({
    @required this.title,
    @required this.subtitle,
  });

  final String title;
  final String subtitle;
}

final List<Item> items = <Item>[
  Item(
    title: 'TV Serie 1',
    subtitle: 'Nombre: Serie 1 \n Genero: Todos \n Actores: pendiente',
  ),
  Item(
    title: 'TV Serie 2',
    subtitle: 'Nombre: Serie 2 \n Genero: Todos \n Actores: pendiente',
  ),
  Item(
    title: 'TV Serie 3',
    subtitle: 'Nombre: Serie 3 \n Genero: Todos \n Actores: pendiente',
  ),
  Item(
    title: 'TV Serie 4',
    subtitle: 'Nombre: Serie 4 \n Genero: Todos \n Actores: pendiente',
  ),
  Item(
    title: 'TV Serie 5',
    subtitle: 'Nombre: Serie 5 \n Genero: Todos \n Actores: pendiente',
  ),
  Item(
    title: 'TV Serie 6',
    subtitle: 'Nombre: Serie 6 \n Genero: Todos \n Actores: pendiente',
  ),
];
