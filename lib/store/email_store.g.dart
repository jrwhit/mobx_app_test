// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailStore on _EmailStore, Store {
  final _$buttonSelectAtom = Atom(name: '_EmailStore.buttonSelect');

  @override
  bool get buttonSelect {
    _$buttonSelectAtom.context.enforceReadPolicy(_$buttonSelectAtom);
    _$buttonSelectAtom.reportObserved();
    return super.buttonSelect;
  }

  @override
  set buttonSelect(bool value) {
    _$buttonSelectAtom.context.conditionallyRunInAction(() {
      super.buttonSelect = value;
      _$buttonSelectAtom.reportChanged();
    }, _$buttonSelectAtom, name: '${_$buttonSelectAtom.name}_set');
  }

  final _$_EmailStoreActionController = ActionController(name: '_EmailStore');

  @override
  void changeEmail(dynamic value) {
    final _$actionInfo = _$_EmailStoreActionController.startAction();
    try {
      return super.changeEmail(value);
    } finally {
      _$_EmailStoreActionController.endAction(_$actionInfo);
    }
  }
}
