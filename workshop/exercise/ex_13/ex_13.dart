/**
 *
 *  State Management with MobX and Provider
 *  State management is one of the most important and interesting topic in Flutter
 *  In Flutter there are many ways to managing the state of the app. The most simple way is setState, which we
 *  already used in the HomeScreen and the GalleryScreen.
 *
 *  However, there are many and better ways rather setState.
 *  In this lesson, we will use the MobX + Provider libraries to manage the state of the GalleryScreen.
 *
 *  As mentioned, in Flutter, there are many State Management techniques such as BLoC, Provider, MobX, setState and more.
 *  Each one has its benefits and cons. As you get experienced with Flutter, you will have the knowledge to decide which
 *  is the best for your use case.
 *
 *  For this app, I've chosen MobX + Provider which are quite simple to implement and understand.
 * */


/**
 *  Adding dependencies
 * */
//TODO 1 - Add the flutter_mobx library to the project dependencies, in the pubspec.yaml file: https://pub.dev/packages/flutter_mobx
//TODO 2 - Add mobx_codegen dependency
//TODO 3 - Add Provider package dependency
//TODO 4 - Add build_runner to dev_dependencies,
/// Checkout pubspec.yaml file with all new dependencies

/// dependencies:
///   flutter:
///     sdk: flutter
///   flutter_mobx: ^2.0.4
///   mobx_codegen:
///   provider: ^6.0.2
///   # The following ...
///   cupertino_icons: ^0.1.2 //This one was already there by default
///
///
/// dev_dependencies:
///   flutter_test:
///     sdk: flutter
///   build_runner:

//TODO 5 - After adding dependencies in the pubspec.yaml, click Pub get to sync the dependencies
//TODO 6 - In the gallery_screen directory, create new gallery_store.dart file
//TODO 7 - In the new file, create an abstract class _GalleryStore, this will be the class which will contain the logic for the gallery
/// abstract class _GalleryStore with Store {
///
/// }
//TODO 8 - Lets fill the store file code
//TODO 9 - Copy the images list from the gallery page and place it inside the GalleryStore class
/// _GalleryStore with Store{
///
///   List<String> _images = [
///     "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
///     "https://image.tmdb.org/t/p/w500/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
///     "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg"
///   ];
///
//TODO 10 - Mobx store works with predefined components types such as: @computed, @action, @observable
//TODO 11 - Below the _images list, Create the _index @observable:
/// @observable
/// int _index = 0;
//TODO 12 - Next, create the _image @computed field:
///   @computed
///   String get image => _images[_index];
//TODO 13 - Next, create first and last @computed fields:
/// @computed
/// bool get first => _index == 0;
///
/// @computed
/// bool get last => _index == (_images.length - 1);
//TODO 14 - Create two @action methods for next and previous, these methods will be called from the Widget when user clicks the gallery buttons
/// @action
///   void next(){
///     _index++;
///   }
//
///   @action
///   void previous(){
///     _index--;
///   }
//TODO 15 - Our store class is ready, however, as you notice, this is an abstract private class, we should create a concrete class for it
//TODO 16 - At the top of the file, above the abstract class define a concrete class for it:
/// class GalleryStore = _GalleryStore with _$GalleryStore;
///
/// abstract class _GalleryStore with Store{...
//TODO 17 - Add the part statement below the file import:
/// import 'package:mobx/mobx.dart';
/// part 'gallery_store.g.dart';
//TODO 18 - Notice that currently you should have compilation error as the gallery_store.g.dart file not exists yet.

/**
 * Running the build runner script to generate code.
 *
 * In Flutter, code generation is very popular.
 * As you notice in our GalleryStore class, we defined a few annotations like @computed, @action and @observable which came from
 * the MobX library, these annotations means that there should be some generated code which will be created for these annotations and for this class.
 * In Flutter, code generate isn't created automatically like in Kotlin for example, for this we need to run the build runner command.
 *
 *
 * */

//TODO 19 - Open terminal in the project directory
//TODO 20 - Run the following command to run the build runner script:
/// flutter pub run build_runner build
//TODO 21 - Wait for the script to complete with Succeeded result:
///  [INFO] Succeeded after 1.5s with 2 outputs (3 actions)
//TODO 22 - Go back to the gallery_store.dart file, see that all errors are gone and look for the gallery_store.g.dart file that was created in the same directory.
//TODO 23 - As we've created the store, it still not in use, the GalleryScreen still works with setState, in the next lesson we will integrated the Store using the Provider library.
