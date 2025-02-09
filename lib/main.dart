import 'package:doctory/core/di/dependancy_injection.dart';
import 'package:doctory/core/helpers/bloc_observer.dart';
import 'package:doctory/core/routing/app_router.dart';
import 'package:doctory/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  Bloc.observer = SimpleBlocObserver();

  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
