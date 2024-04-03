import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/infrastructure/api_call_wrapper.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../cast/infrastructure/cast_dto.dart';
import '../../cast/infrastructure/extensions.dart';

class FavouriteCastService {
  static const String key = "fovouriteCasts";
  final Future<SharedPreferences> _preferences;

  FavouriteCastService(this._preferences);

  Future<Unit> saveFavourite(List<CastDTO> casts) async {
    return apiCallWrapper(() async {
      final pref = await _preferences;
      final res = await pref.setString(
          key, jsonEncode(casts.map((e) => e.toJson()).toList()));
      if (!res) {
        throw LocalStorageException(11007, "Saving to local storage failed!");
      }
      return unit;
    });
  }

  Future<List<CastDTO>> getFavourites() async {
    return apiCallWrapper(() async {
      final pref = await _preferences;
      final res = pref.getString(key);
      if (res == null) {
        return [];
      }
      final maps = jsonDecode(res) as List;
      return maps.toDTO();
    });
  }

  Future<List<CastDTO>> getFavouritesByName(String? value) async {
    final favourites = await getFavourites();
    if (value == null || value.isEmpty) {
      return favourites;
    }
    return favourites
        .where((element) =>
            element.name?.toLowerCase().contains(value.toLowerCase()) ?? false)
        .toList();
  }

  Future<List<CastDTO>> getFavouritesByStatus(String? value) async {
    final favourites = await getFavourites();
    if (value == null || value.isEmpty) {
      return favourites;
    }
    return favourites
        .where((element) =>
            element.status?.toLowerCase().contains(value.toLowerCase()) ??
            false)
        .toList();
  }

  Future<List<CastDTO>> getFavouritesBySpecies(String? value) async {
    final favourites = await getFavourites();
    if (value == null || value.isEmpty) {
      return favourites;
    }
    return favourites
        .where((element) =>
            element.species?.toLowerCase().contains(value.toLowerCase()) ??
            false)
        .toList();
  }

  Future<List<CastDTO>> getFavouritesByType(String? value) async {
    final favourites = await getFavourites();
    if (value == null || value.isEmpty) {
      return favourites;
    }
    return favourites
        .where((element) =>
            element.type?.toLowerCase().contains(value.toLowerCase()) ?? false)
        .toList();
  }

  Future<List<CastDTO>> getFavouritesByGender(String? value) async {
    final favourites = await getFavourites();
    if (value == null || value.isEmpty) {
      return favourites;
    }
    return favourites
        .where((element) =>
            element.gender?.toLowerCase().contains(value.toLowerCase()) ??
            false)
        .toList();
  }
}
