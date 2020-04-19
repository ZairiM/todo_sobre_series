import 'package:compatibilidad_pantallas/models/capitulo.dart';
import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';


class CapituloListing extends StatelessWidget {
  CapituloListing({
    @required this.capituloSelectedCallBack,
    this.selectedItem,
    this.selectedCapitulo,
  });

  final ValueChanged<Capitulo> capituloSelectedCallBack;
  final Item selectedItem;
  final Capitulo selectedCapitulo;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: capitulos.map((capitulo) {
        return Column(
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () => capituloSelectedCallBack(capitulo),
                child: Container(
                  width: 300,
                  height: 200,
                  child: new Stack(
                    children: <Widget>[
                      Container(
                    width: 500,
                    height: 100,
                    child: Text(
                      capitulo?.title ?? 'Ningún elemento seleccionado!',
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    child: Text(
                      capitulo?.subtitle ??
                          'Por favor escoge un elemento a la izquierdita',
                      
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                    ],
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
