import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio04/resources/spacing.dart';
import '../resources/strings.dart';
import '../resources/images.dart';

class TourPage extends StatelessWidget {
  const TourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.XL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              Strings.titleTourPage,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),
            ),
            SizedBox(
              height: Spacing.MD,
            ),
            CardTour(
              title: Strings.firstPlaceTitleTourPage,
              description: Strings.firstPlaceDescriptionTourPage,
              image: Images.firstPlaceImage,
            ),
            SizedBox(
              height: Spacing.MD,
            ),
            CardTour(
              title: Strings.secondPlaceTitleTourPage,
              description: Strings.secondPlaceDescriptionTourPage,
              image: Images.secondPlaceImage,
            ),
            SizedBox(
              height: Spacing.MD,
            ),
            CardTour(
              title: Strings.thirdPlaceTitleTourPage,
              description: Strings.thirdPlaceDescriptionTourPage,
              image: Images.thirdPlaceImage,
            )
          ],
        ),
      ),
    );
  }
}

class CardTour extends StatelessWidget {
  const CardTour({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: Spacing.XS,
        ),
        Image.network(image),
        const SizedBox(
          height: Spacing.XS,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 17.0),
        ),
      ],
    );
  }
}
