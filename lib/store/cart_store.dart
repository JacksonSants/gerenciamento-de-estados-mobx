import 'package:mobx/mobx.dart';

import '../models/item.dart';
part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {
  @observable
  List<Item> items = ObservableList<Item>();

  @action
  void addCart(Item item) {
    items.add(item);
  }

  @action
  void removeCart(Item item){
    items.remove(item);
  }
}