import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio03/models/pet.dart';
import 'package:flutter_exercicio_06/Exercicio03/resources/images.dart';
import 'package:flutter_exercicio_06/Exercicio03/resources/strings.dart';

class TabScroll extends StatefulWidget {
  const TabScroll({
    Key? key,
    required this.onThemeModePressed,
  }) : super(key: key);

  @override
  State<TabScroll> createState() => _TabScrollState();
  final VoidCallback onThemeModePressed;
}

class _TabScrollState extends State<TabScroll> {
  final pets = const [
    Pet(name: Strings.beagle, link: Images.beagle),
    Pet(name: Strings.borderCollie, link: Images.borderCollie),
    Pet(name: Strings.bulldog, link: Images.bulldog),
    Pet(name: Strings.dachshund, link: Images.dachshund),
    Pet(name: Strings.dalmata, link: Images.dalmata),
    Pet(name: Strings.golden, link: Images.golden),
    Pet(name: Strings.husky, link: Images.husky),
    Pet(name: Strings.pug, link: Images.pug),
    Pet(name: Strings.spaniel, link: Images.spaniel),
    Pet(name: Strings.weimaraner, link: Images.weimaraner),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: pets.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: widget.onThemeModePressed,
              icon: Icon(
                theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            tabs: pets.map((pet) => Tab(text: pet.name)).toList(),
          ),
        ),
        body: TabBarView(
          children: pets
              .map(
                (pet) => Center(
                  child: Image.network(
                    pet.link,
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
