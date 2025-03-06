import 'package:flutter/material.dart';
import 'package:panucci_delivery/components/contador.dart';

import '../models/item.dart';

class Cartao extends StatelessWidget {
  const Cartao({ Key? key, required this.currentItem }) : super(key: key);
  final Item currentItem;

  @override
  Widget build(BuildContext context){
    return Card(
      color: const Color(0xFFF6F6F6),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
              image: AssetImage(currentItem.uri),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(currentItem.nome, style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text("R\$ ${currentItem.preco.toStringAsFixed(2)}"),
                  ),
                  Contador(currentItem: currentItem),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
