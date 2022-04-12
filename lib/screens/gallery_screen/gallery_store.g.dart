// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GalleryStore on _GalleryStore, Store {
  Computed<String>? _$imageComputed;

  @override
  String get image => (_$imageComputed ??=
          Computed<String>(() => super.image, name: '_GalleryStore.image'))
      .value;
  Computed<bool>? _$firstComputed;

  @override
  bool get first => (_$firstComputed ??=
          Computed<bool>(() => super.first, name: '_GalleryStore.first'))
      .value;
  Computed<bool>? _$lastComputed;

  @override
  bool get last => (_$lastComputed ??=
          Computed<bool>(() => super.last, name: '_GalleryStore.last'))
      .value;

  final _$_indexAtom = Atom(name: '_GalleryStore._index');

  @override
  int get _index {
    _$_indexAtom.reportRead();
    return super._index;
  }

  @override
  set _index(int value) {
    _$_indexAtom.reportWrite(value, super._index, () {
      super._index = value;
    });
  }

  final _$_GalleryStoreActionController =
      ActionController(name: '_GalleryStore');

  @override
  void next() {
    final _$actionInfo =
        _$_GalleryStoreActionController.startAction(name: '_GalleryStore.next');
    try {
      return super.next();
    } finally {
      _$_GalleryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void previous() {
    final _$actionInfo = _$_GalleryStoreActionController.startAction(
        name: '_GalleryStore.previous');
    try {
      return super.previous();
    } finally {
      _$_GalleryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
image: ${image},
first: ${first},
last: ${last}
    ''';
  }
}
