import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    @required this.isInDualPanelLayout,
    @required this.item,
  });

  final bool isInDualPanelLayout;
  final Item item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          item?.title ?? 'Ningún elemento seleccionado!',
          style: textTheme.headline,
        ),
        Text(
          item?.subtitle ?? 'Por favor escoge un elemento a la izquierda',
          style: textTheme.subhead,
        ),
      ],
    );

    if (isInDualPanelLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(child: content),
    );
  }
}
