import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class AthleteAvatarWidget extends StatefulWidget {
  const AthleteAvatarWidget({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  State<AthleteAvatarWidget> createState() => _AthleteAvatarWidgetState();
}

class _AthleteAvatarWidgetState extends State<AthleteAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kAthleteAvatarHeight,
      width: kAthleteAvatarWidth,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kAthleteAvatarBorderRadius),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {},
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              children: [
                Positioned.fill(
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, image, loadingProgress) {
                      if (loadingProgress == null) return image;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
