import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:compatibilidad_pantallas/pages/item_details.dart';
import 'package:compatibilidad_pantallas/pages/item_listing.dart';
import 'package:flutter/material.dart';
class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kDualPanelBreakpoint = 600;

  Item _selectedItem;

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
          child: ItemDetails(
            isInDualPanelLayout: true,
            item: _selectedItem, capitulo: null,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < kDualPanelBreakpoint) {
      content = _buildSinglePanelLayout();
    } else {
      content = _buildDualPanelLayout();
    }

    return Scaffold(
   appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.search),
           onPressed: null,

         ),
         title: Text('Todo Sobre Series'),
       ),    
      
      body:content,
      
    );
  }
}

