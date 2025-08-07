import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:plan_note/core/services/service_locator.dart';
import 'package:plan_note/core/theme/cubit/theme_cubit.dart';
import 'package:plan_note/core/theme/theme.dart';
import 'package:plan_note/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_note/l10n/cubit/locale_cubit.dart';

class PlanNoteApp extends StatelessWidget {
  const PlanNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ThemeCubit>()..loadSavedTheme()),
        BlocProvider(create: (context) => sl<LocaleCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Plan Note',
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: AppTheme.lightMode,
            darkTheme: AppTheme.darkMode,
            themeMode: context.read<ThemeCubit>().getThemeMode(),
            home: HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plan Note Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to Plan Note App!'),
            ElevatedButton(
              onPressed: () {
                // Navigate to another screen or perform an action
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
