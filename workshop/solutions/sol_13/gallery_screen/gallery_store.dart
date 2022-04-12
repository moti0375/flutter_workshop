import 'package:mobx/mobx.dart';

part 'gallery_store.g.dart';

class GalleryStore = _GalleryStore with _$GalleryStore;

abstract class _GalleryStore with Store{

  List<String> _images = [
    "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
    "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
    "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg"
  ];

  @observable
  int _index = 0;

  @computed
  String get image => _images[_index];

  @computed
  bool get first => _index == 0;

  @computed
  bool get last => _index == (_images.length - 1);

  @action
  void next(){
    _index++;
  }

  @action
  void previous(){
    _index--;
  }


}