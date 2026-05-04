import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong2.dart';

void main() {
  runApp(const MaterialApp(home: MegaRouteApp()));
}

class MegaRouteApp extends StatelessWidget {
  const MegaRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MegaRoute Map')),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(25.0330, 121.5654), // 台北 101
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.megaroute_app',
          ),
        ],
      ),
    );
  }
}
