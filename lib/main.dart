import 'package:doctory/core/routing/app_router.dart';
import 'package:doctory/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
