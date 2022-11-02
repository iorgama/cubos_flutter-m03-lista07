import 'dart:math';

import 'package:flutter/material.dart';

import '../resources/spacing.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          Spacing.XL, Spacing.XXL_1, Spacing.XL, Spacing.NONE),
      child: Column(
        children: [
          Text(
            'Partida'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: Spacing.MD,
          ),
          const Text(
            'Abril 26, 2022',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: Spacing.XXL_1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    'GRU',
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: Spacing.MD,
                  ),
                  Text('Guarulhos, Brazil',
                      style: TextStyle(
                        fontSize: 14.0,
                      )),
                ],
              ),
              Transform.rotate(
                angle: 90 * pi / 180,
                child: const IconButton(
                  icon: Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.black,
                    size: 46,
                  ),
                  onPressed: null,
                ),
              ),
              Column(
                children: const [
                  Text(
                    'OPO',
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: Spacing.MD,
                  ),
                  Text('Porto, Portugal',
                      style: TextStyle(
                        fontSize: 14.0,
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
