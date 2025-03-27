import 'package:flutter/foundation.dart';

class Doctor {
  final String name;
  final String department;
  final String specialty;

  Doctor({
    required this.name,
    required this.department,
    required this.specialty,
  });
}

class FavoritesProvider with ChangeNotifier {
  final List<Doctor> _favorites = [];

  List<Doctor> get favorites => _favorites;

  bool isFavorite(String doctorName) {
    return _favorites.any((doctor) => doctor.name == doctorName);
  }

  void toggleFavorite(String name, String department, String specialty) {
    final doctor = Doctor(name: name, department: department, specialty: specialty);
    
    if (isFavorite(name)) {
      _favorites.removeWhere((d) => d.name == name);
    } else {
      _favorites.add(doctor);
    }
    
    notifyListeners();
  }
} 