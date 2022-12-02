import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../utils/image_handler.dart';

class GalleryWidget extends StatefulWidget {
  final PageController _pageController;
  final List<String> imageUrls;

  ImageHandler imageHandler = ImageHandler(
    storagePath: 'machines',
    defaultImagePath: 'images/download.jpg',
  );
  final int index;

  GalleryWidget({super.key,
    required this.imageUrls,
    //required this.imageFiles,
    required this.imageHandler,
    required this.index,
  }) : _pageController = PageController(
    initialPage: index,
  );

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<String>('imageUrls', imageUrls));
  }
}

class _GalleryWidgetState extends State<GalleryWidget> {
  @override
  Widget build(BuildContext context) {
    print(widget.imageUrls.length);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                //send a notification to the admins to report a problem with the machine
                //BackEndUtils.sendNotification();
              },
            ),
          ],
        ),
        body: PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          pageController: widget._pageController,
          itemCount: widget.imageUrls.length,
          builder: (BuildContext context, int index) {
            final String imageUrl = widget.imageUrls[index];
            //final File imageFile = widget.imageFiles[index];
            return PhotoViewGalleryPageOptions(
              imageProvider:
              widget.imageHandler.getImageProviderFromUrl(imageUrl),
            );
          },
        ));
  }
}
