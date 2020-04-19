import 'package:compatibilidad_pantallas/models/item.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    @required this.itemSelectedCallback,
    this.selectedItem,
  });

  final ValueChanged<Item> itemSelectedCallback;
  final Item selectedItem;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: items.map((item) {
        return Column(
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () => itemSelectedCallback(item),
                child: Container(
                  width: 300,
                  height: 200,
                  child: new Stack(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 100.0,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: Text(item.title),
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
