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
    title: 'Elemento 1',
    subtitle: 'Acá está el primer elemento',
  ),
  Item(
    title: 'Elemento 2',
    subtitle: 'Acá está el segundo elemento',
  ),
  Item(
    title: 'Elemento 3',
    subtitle: 'Acá está el primer elemento',
  ),
];