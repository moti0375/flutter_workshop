import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_workshop/screens/gallery_screen/gallery_store.dart';
import 'package:flutter_workshop/ui/custom_elevated_button.dart';
import 'package:provider/provider.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  late GalleryStore _store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _store = Provider.of<GalleryStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Screen"),
      ),
      body: SafeArea(
        bottom: true,
        child: Container(
          padding: EdgeInsets.all(8),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                                   BoxShadow(
                                     color: Colors.black38,
                                     offset: Offset(4.0, 4.0),
                                     blurRadius: 10.0,
                                     spreadRadius: 0.4,
                                   ),
                                 ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    _store.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _buildPageButton(
                      title: "Previous",
                      onPressed: _store.first ?  null :  _store.previous,
                    ),
                  ),
                  Expanded(
                    child: _buildPageButton(
                      title: "Next",
                      onPressed: _store.last ? null : _store.next,
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }
    );
  }

  Widget _buildPageButton({required String title, Function()? onPressed}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: CustomElevatedButton(onPressed: onPressed, child: Text(title)),
    );
  }
}
