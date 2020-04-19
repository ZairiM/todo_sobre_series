import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:compatibilidad_pantallas/models/capitulo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
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
                      item?.title ?? 'Ningún elemento seleccionado!',
                      style: textTheme.headline,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    width: 500,
                    height: 100,
                    child: Text(
                      item?.subtitle ??
                          'Por favor escoge un elemento a la izquierda',
                      style: textTheme.subhead,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Card(
          child: InkWell(
            child: Container(
              width: 500,
              height: 300,
              child: new Stack(
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: InkWell(
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Text("1"),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Text("2"),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Text("3"),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.topRight,
                  ),
                  ListView(
                    children: capitulos.map((capitulo) {
                      return Column(children: <Widget>[
                        ListTile(
                          title: Text(capitulo.title),
                          onTap: () => showToast,
                        ),
                        Visibility(
                          visible: _isVisible,
                          child: Text(capitulo.subtitle),
                        ),
                      ]);
                    }).toList(),
                  )
                ],
              ),
              alignment: Alignment.center,
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
        title: Text(item.title),
      ),
      body: Center(child: content),
    );
  }
}
