
import 'package:compatibilidad_pantallas/models/capitulo.dart';
import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:compatibilidad_pantallas/pages/item_details.dart';
import 'package:compatibilidad_pantallas/pages/capitulo_details.dart';
import 'package:compatibilidad_pantallas/pages/item_listing.dart';
import 'package:flutter/material.dart';
class MasterDetailContainerCaps extends StatefulWidget {
  @override
  _ItemMasterDetailContainerCapsState createState() =>
      _ItemMasterDetailContainerCapsState();
}

class _ItemMasterDetailContainerCapsState extends State<MasterDetailContainerCaps> {
  static const int kDualPanelBreakpoint = 600;

  Item _selectedItem;
  Capitulo _selectedCapitulo;

  Widget _buildSinglePanelLayout() {
    return ItemListing(
      itemSelectedCallback: (item) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ItemDetails(
                isInDualPanelLayout: false,
                item: item, capitulo: null,
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildDualPanelLayout() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              itemSelectedCallback: (item) {
                setState(() {
                  _selectedItem = item;
                });
              },
              selectedItem: _selectedItem,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: 
           CapituloDetails(isInDualPanelLayout: true, 
           item: null, capitulo: _selectedCapitulo),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.longestSide;

    if (shortestSide < kDualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Esto es algo diferente'),
      ),
      body: content,
    );
  }
}
