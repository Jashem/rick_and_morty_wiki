import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/application/app_bloc_observer.dart';
import 'core/presenation/app_widget.dart';
import 'core/shared/dependency_injection.dart';

void main() {
  setupDI();
  Bloc.observer = AppBlocObserver();
  runApp(const AppWidget());
}
