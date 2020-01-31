import 'package:flutter/material.dart';

class FetchImage extends StatelessWidget {
  /// fetch image using url
  /// enter the url
  /// the [return type] is image widget
  /// usage:
  /// ```
  /// Widget methodName() {
  ///   return Container(
  ///     child: FetchImage('domain.tld/image.f_extension');
  ///   ),
  /// }
  /// ```
  const FetchImage(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes
                : null,
          ),
        );
      },
    );
  }
}
