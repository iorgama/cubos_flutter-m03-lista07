import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio01/models/pet.dart';
import 'package:flutter_exercicio_06/Exercicio01/resources/images.dart';
import 'resources/strings.dart';

class MyFixedTab extends StatefulWidget {
  const MyFixedTab({
    Key? key,
    required this.onThemeModePressed,
  }) : super(key: key);

  @override
  State<MyFixedTab> createState() => _MyFixedTabState();

  final VoidCallback onThemeModePressed;
}

class _MyFixedTabState extends State<MyFixedTab> {
  final pets = const [
    Pet(name: Strings.firstTab),
    Pet(name: Strings.secondTab),
    Pet(name: Strings.thirdTab),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: pets.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF7986CB),
          leading: Image.network(Images.paw),
          title: const Text(Strings.appName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
            indicatorColor: Colors.pink,
            tabs: pets.map((pet) => Tab(text: pet.name)).toList(),
          ),
        ),
        body: TabBarView(
          children: pets
              .map(
                (pet) => Center(
                  child: Text(pet.name),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
