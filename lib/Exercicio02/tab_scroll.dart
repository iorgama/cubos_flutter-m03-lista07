import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio02/resources/strings.dart';

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
  var tabs = [for (var i = 1; i < 10; i++) 'Tab $i'];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: tabs.length,
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
            tabs: tabs.map((tab) => Tab(text: tab)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs
              .map(
                (tab) => Center(
                  child: Text(tab),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

  // 
