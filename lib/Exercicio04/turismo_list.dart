import 'package:flutter/material.dart';
import 'package:flutter_exercicio_06/Exercicio04/models/travelAgency.dart';
import 'package:flutter_exercicio_06/Exercicio04/pages/flight_page.dart';
import 'package:flutter_exercicio_06/Exercicio04/pages/map_page.dart';
import 'package:flutter_exercicio_06/Exercicio04/pages/tour_page.dart';
import 'package:flutter_exercicio_06/Exercicio04/resources/strings.dart';

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
  final travelAgencies = const [
    TravelAgency(
        name: Strings.flights, icon: Icons.airplanemode_active_rounded),
    TravelAgency(name: Strings.tours, icon: Icons.luggage),
    TravelAgency(name: Strings.map, icon: Icons.map)
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: travelAgencies.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            Strings.appName,
            style: TextStyle(
                color: Color(0XFF1364C1),
                fontWeight: FontWeight.w700,
                fontSize: 25.0),
          ),
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
            indicatorColor: const Color(0XFF1364C1),
            tabs: travelAgencies
                .map(
                  (travelAgency) => Tab(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: Icon(
                            travelAgency.icon,
                            color: const Color(0XFF1364C1),
                            size: 24.0,
                          ),
                        ),
                        Text(
                          travelAgency.name.toUpperCase(),
                          style: const TextStyle(
                            color: Color(0XFF1364C1),
                            fontWeight: FontWeight.w700,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: FlightPage(),
          ),
          TourPage(),
          Center(
            child: MapPage(),
          )
        ]),
      ),
    );
  }
}
