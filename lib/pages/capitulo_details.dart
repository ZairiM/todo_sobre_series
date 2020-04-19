import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:compatibilidad_pantallas/models/capitulo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CapituloDetails extends StatelessWidget {
  CapituloDetails({
    @required this.isInDualPanelLayout,
    @required this.item,
    @required this.capitulo,
  });

  final bool isInDualPanelLayout;
  final Item item;
  final Capitulo capitulo;

  bool _isVisible = false;

  void showToast() {
    //setState(() {
    _isVisible = !_isVisible;
    //});
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          child: InkWell(
            child: Container(
              width: 500,
              height: 200,
              child: new Stack(
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 100,
                    child: Text(
                      capitulo?.title ?? 'Ningún elemento seleccionado!',
                      style: textTheme.headline5,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    child: Text(
                      capitulo?.subtitle ??
                          'Por favor escoge un elemento a la izquierdaaaa',
                      style: textTheme.subtitle1,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
    
    if (isInDualPanelLayout) {
      return Center(child: content);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(capitulo.title),
      ),
      body: Center(child: content),
    );
  }
}
