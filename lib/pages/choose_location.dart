import 'package:flutter/material.dart';
import 'package:flutter_expert/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/Madrid', location: 'Spain', flag: 'spain.png'),
    WorldTime(url: 'Atlantic/Madeira', location: 'Madeira (Portugal)', flag: 'portugal.png'),
    WorldTime(url: 'Africa/Casablanca', location: 'Casablanca', flag: 'morocco.png'),
    WorldTime(url: 'Africa/Ndjamena', location: 'Chad', flag: 'chad.png'),
    WorldTime(url: 'America/Costa_Rica', location: 'San José',flag: 'costa_rica.png'),
    WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Buenos Aires', flag: 'argentina.png'),
    WorldTime(url: 'Pacific/Pago_Pago', location: 'Pago Pago', flag: 'american_samoa.png'),
    WorldTime(url: 'Pacific/Funafuti', location: 'Tuvalu', flag: 'tuvalu.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Pakistan', flag: 'pakistan.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
