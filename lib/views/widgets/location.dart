import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Position? _currentPosition;
  String? _currentAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_currentAddress ?? "Location not set"),
        TextButton(
          child: Icon(Icons.location_pin),
          onPressed: () async {
            await _getCoordinates();
          },
        ),
        SizedBox(width: 6),
      ],
    );
  }

  Future<void> _getCoordinates() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
);
      setState(() {
        _currentPosition = position;
      });
      var currentLatitude = position.latitude;
      var currentLongitude = position.longitude;
      await _getLocationFromCoordinates(currentLatitude, currentLongitude); // Await async function
    } catch (e) {
      print(e);
    }
  }

  Future<void> _getLocationFromCoordinates(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
      print('Placemarks: $placemarks');
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        print('Placemark locality: ${place.locality}, country: ${place.country}');
        setState(() {
          _currentAddress = "${place.locality}, ${place.country}";
        });
      } else {
        setState(() {
          _currentAddress = "Address not found";
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        _currentAddress = "Error: $e. Lat = $latitude, Lon = $longitude";
      });
    }
  }
}