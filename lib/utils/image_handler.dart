import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;
import 'package:where_to_watch/widgets/gallery_widget.dart';



/// An utility class to handle images.
///
/// * Gets images from filesystem or from network.
/// * Gets files from device's camera or gallery.
/// * Upload/delete image to/from Firebase Storage.
class ImageHandler {
  /// Firebase Storage reference.
  late final Reference storageRef;

  /// Path to a default image to use if no other image is found.
  final String? defaultImagePath;

  /// Widget to display in case of error with the images.
  final Widget error = SizedBox(
    height: 100,
    width: 100,
    child: Center(child: CircularProgressIndicator()),
  );

  ImageHandler({String? storagePath, this.defaultImagePath}) {
    //  storageRef = FirebaseStorage.instance.ref(storagePath);
  }

  /// The default image.
  ///
  /// Returns the [error] widget if an error occured during image creation
  /// or if no [defaultImagePath] has been provided.
  Widget getdefaultImage() {
    return defaultImagePath != null
        ? Image.asset(
      defaultImagePath!,
      fit: BoxFit.cover,
      errorBuilder: (BuildContext context, Object object, StackTrace? t) {
        return error;
      },
    )
        : error;
  }

  ImageProvider getDefaultImageProvider() {
    if (defaultImagePath == null) {
      return AssetImage("images/download.jpg");
    }
    return AssetImage(defaultImagePath!);
  }

  /// Gets an image widget from [file].
  ///
  /// Returns the [defaultImage] if an error occured during image creation.
  Widget getImageFromFile(File? file) {
    return (file == null)
        ? getdefaultImage()
        : Image.file(
      file,
      fit: BoxFit.cover,
      errorBuilder: (BuildContext context, Object object, StackTrace? t) {
        return getdefaultImage();
      },
    );
  }

  Future<String> getImageUrl(File file) {
    return storageRef.child(file.path).getDownloadURL();
  }

  /// Gets an image widget from [url].
  /// Use cache to improve performance.
  ///
  /// Returns the [defaultImage] if an error occured during image creation.
  Widget getImageFromUrl(String url) {
    if (url == "") {
      return getdefaultImage();
    }
    return CachedNetworkImage(
      useOldImageOnUrlChange: true,
      ///uses cache to improve performance
      imageUrl: url,
      // progressIndicatorBuilder:
      //     (context, url, downloadProgress) => Container(
      //   decoration: const BoxDecoration(
      //     shape: BoxShape.circle,
      //     color: Colors.white,
      //   ),
      // ),
      errorWidget: (BuildContext context, String url, dynamic error) {
        print("error $error");
        return getdefaultImage();
      },
      fit: BoxFit.cover,
      placeholder: (context, url) => Center(child:CircularProgressIndicator()),
    );
  }

  Widget getPreviewFromUrl(String url) {
    bool isTextFile = url.endsWith('.docx') ||
        url.endsWith('.odt') ||
        url.endsWith('.ods') ||
        url.endsWith('.txt') ||
        url.endsWith('.odp');
    if (url == "") {
      return getdefaultImage();
    }
    if (url.endsWith('.mp4')) {
      return getImageFromUrl('images/video_icon.png');
      /*return CachedNetworkImage(
        useOldImageOnUrlChange: true,

        ///uses cache to improve performance
        imageUrl: 'images/video_icon.png',
        errorWidget: (BuildContext context, String url, dynamic error) =>
            getdefaultImage(),
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
      ); */
    }
    if (url.endsWith('.pdf')) {
      return getImageFromUrl('images/video_icon.png');

      /*return CachedNetworkImage(
        useOldImageOnUrlChange: true,

        ///uses cache to improve performance
        imageUrl: 'images/pdf_icon.png',
        errorWidget: (BuildContext context, String url, dynamic error) =>
            getdefaultImage(),
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
      ); */
    }
    if (isTextFile) {
      return getImageFromUrl('images/text_icon.png');
      /*return CachedNetworkImage(
        useOldImageOnUrlChange: true,

        ///uses cache to improve performance
        imageUrl: 'images/text_icon.png',
        errorWidget: (BuildContext context, String url, dynamic error) =>
            getdefaultImage(),
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
      ); */
    } else {
      return CachedNetworkImage(
        useOldImageOnUrlChange: true,

        ///uses cache to improve performance
        imageUrl: url,
        errorWidget: (BuildContext context, String url, dynamic error) =>
            getdefaultImage(),
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
      );
    }
  }

  ///same thing as above but with a provider
  CachedNetworkImageProvider getImageProviderFromUrl(String url) {
    return CachedNetworkImageProvider(
      url,
      errorListener: () => (context, url, error) {
        print("Error in CachedNetworkProvider $error");
      },
    );
  }

  /// Takes a picture from the device camera
  /// and returns the corresponding file.
  Future<File> takePicture() async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1024,
    );
    File imageFile = File(pickedFile!.path);
    return imageFile;
  }


  // ///get File from url
  // Future<File> getFileFromUrl(String url)async{
  //   final http.Response responseData = await http.get(Uri.parse(url));
  //   var uint8list = responseData.bodyBytes;
  //   var buffer = uint8list.buffer;
  //   ByteData byteData = ByteData.view(buffer);
  //   var tempDir = await getTemporaryDirectory();
  //   File file = await File('${tempDir.path}/img').writeAsBytes(
  //       buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
  // }



  /// Selects a picture from the device gallery
  /// and returns the corresponding file.
  Future<File> selectPicture() async {
    final XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxWidth: 1024);
    File imageFile = File(pickedFile!.path);
    return imageFile;
  }

  ///Clips an image in a circle with a border of [borderWidth] and [borderColor] arround it
  ///in size of size of [size].
  Widget clipImageOval(
      Widget image, double size, double borderWidth, Color borderColor) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size * 0.9),
      child: Stack(fit: StackFit.loose, alignment: Alignment.center, children: [
        Container(height: size, width: size, color: borderColor),
        SizedBox(
          height: size - borderWidth * 2,
          width: size - borderWidth * 2,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(size * 0.6), child: image),
        ),
      ]),
    );
  }

  Widget clipImageSquare(
      Widget image, double size, double borderWidth, Color borderColor) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size * 0.9),
      child: Stack(fit: StackFit.loose, alignment: Alignment.center, children: [
        Container(height: size, width: size, color: borderColor),
        SizedBox(
          height: size - borderWidth * 2,
          width: size - borderWidth * 2,
          child: ClipRRect(
               child: image),
        ),
      ]),
    );
  }

  /// Uploads [file] to the storage and return its url.
  ///
  /// An arbitrary filename is chosen based on the timestamp.
  /// If the upload failed, prints an error message to the console
  /// and returns `null`.
  Future<String?> upload(File file) async {
    String? url;
    final String time = DateTime.now().millisecondsSinceEpoch.toString();
    final String extension = Path.extension(file.path);
    final String name = time + extension;
    final Reference ref = storageRef.child(name);
    final UploadTask uploadTask = ref.putFile(file);

    try {
      final res = await uploadTask;
      url = await res.ref.getDownloadURL();
    } catch (error) {
      print(error);
    }

    return url;
  }

  /// Deletes the object at the reference corresponding to [url].
  static Future<void> delete(url) async {
    try {
      // await FirebaseStorage.instance.refFromURL(url).delete();
    } catch (e) {
      print('Error when deleting image at "$url": $e');
    }
  }

  void openGallery({ required BuildContext context,
    required List<String> imageUrls, required int index}) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => GalleryWidget(
          imageUrls: imageUrls,
          imageHandler: this,
          index: index,
        ),
      ),
    );
  }
}

class ClipAvatar extends StatelessWidget {
  const ClipAvatar(
      {required this.size,
        required this.borderColor,
        required this.image,
        required this.borderWidth,
        Key? key})
      : super(key: key);

  final double size;
  final Color borderColor;
  final Widget image;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.loose, alignment: Alignment.center, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size),
          color: borderColor,
        ),
      ),
      SizedBox(
        height: size - borderWidth * 2,
        width: size - borderWidth * 2,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(size * 0.6), child: image),
      ),
    ]);
  }
}
