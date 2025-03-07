// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on _CartStore, Store {
  Computed<int>? _$quantidyItemComputed;

  @override
  int get quantidyItem =>
      (_$quantidyItemComputed ??= Computed<int>(() => super.quantidyItem,
              name: '_CartStore.quantidyItem'))
          .value;
  Computed<bool>? _$emptyListComputed;

  @override
  bool get emptyList => (_$emptyListComputed ??=
          Computed<bool>(() => super.emptyList, name: '_CartStore.emptyList'))
      .value;

  late final _$itemsAtom = Atom(name: '_CartStore.items', context: context);

  @override
  List<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$purchaseTotalAtom =
      Atom(name: '_CartStore.purchaseTotal', context: context);

  @override
  double get purchaseTotal {
    _$purchaseTotalAtom.reportRead();
    return super.purchaseTotal;
  }

  @override
  set purchaseTotal(double value) {
    _$purchaseTotalAtom.reportWrite(value, super.purchaseTotal, () {
      super.purchaseTotal = value;
    });
  }

  late final _$_CartStoreActionController =
      ActionController(name: '_CartStore', context: context);

  @override
  void addCart(Item item) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.addCart');
    try {
      return super.addCart(item);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCart(Item item) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.removeCart');
    try {
      return super.removeCart(item);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatePurchase() {
    final _$actionInfo = _$_CartStoreActionController.startAction(
        name: '_CartStore.updatePurchase');
    try {
      return super.updatePurchase();
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
purchaseTotal: ${purchaseTotal},
quantidyItem: ${quantidyItem},
emptyList: ${emptyList}
    ''';
  }
}
