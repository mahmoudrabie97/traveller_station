import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_cubit.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';
import 'package:traveller_station/generated/l10n.dart';
import 'package:traveller_station/pages/Auth_page/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
              locale: AuthCubit.get(context).language == 'عربي'
                  ? Locale('ar')
                  : Locale('en'),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const LoginPage());
        },
      ),
    );
  }
}
