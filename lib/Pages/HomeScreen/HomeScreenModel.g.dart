// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$dataAtom =
      Atom(name: '_HomeScreenModelBase.data', context: context);

  @override
  int get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(int value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setdata({required int data}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setdata');
    try {
      return super.setdata(data: data);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
