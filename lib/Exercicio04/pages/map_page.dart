import 'package:flutter/material.dart';
import '../resources/images.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        Images.mapImage,
        height: 600,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
