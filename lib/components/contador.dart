import 'package:flutter/material.dart';
import 'package:panucci_delivery/models/item.dart';
import 'package:panucci_delivery/store/cart_store.dart';
import 'package:panucci_delivery/store/item_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Contador extends StatelessWidget {
Contador({ Key? key, required this.currentItem }) : super(key: key);
  final ItemStore itemStore = ItemStore();
  final Item currentItem;

  @override
  Widget build(BuildContext context){
    final cartStore = Provider.of<CartStore>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
                if(itemStore.valorContador > 0){
                  itemStore.removeItem();
                  cartStore.removeCart(currentItem);
                  print(currentItem);
                }
            },
            child: const Icon(Icons.remove_circle_outline, size: 20,),
          ),
          Text(itemStore.valorContador.toString()),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              itemStore.addItem();
              cartStore.addCart(currentItem);
            },
            child: const Icon(Icons.add_circle_outline, size: 20,),
          ),
        ],
      ),
    );
  }
}
