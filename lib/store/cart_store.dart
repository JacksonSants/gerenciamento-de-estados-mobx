import 'package:mobx/mobx.dart';

import '../models/item.dart';
part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {
  @observable
  List<Item> items = ObservableList<Item>();

  @observable
  double purchaseTotal = 0;

  @computed
  int get quantidyItem => items.length;

  @computed
  bool get emptyList => items.isEmpty;

  @action
  void addCart(Item item) {
    items.add(item);
    updatePurchase();
  }

  @action
  void removeCart(Item item){
    items.remove(item);
    updatePurchase();
  }

  @action
  void updatePurchase(){
    purchaseTotal = 0;
    for(var i = 0; i < items.length; i++){
      purchaseTotal += items[i].preco;
    }
  }
}