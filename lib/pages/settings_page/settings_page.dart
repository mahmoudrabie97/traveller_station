import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_cubit.dart';
import 'package:traveller_station/cubit/auth_cubit/auth_states.dart';
import 'package:traveller_station/generated/l10n.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitchOn = false;
  bool _isSwitcheon2 = false;
  String? _language = 'english';

  void _changeLanguage(String? language) {
    setState(() {
      _language = language ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: CustomText(
              text: S.of(context).Settings,
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: S.of(context).languge,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      const Spacer(),
                      DropdownButton<String>(
                        value: AuthCubit.get(context).language ?? 'english',
                        onChanged: (value) {
                          AuthCubit.get(context).changeLanguaget(value);
                        },
                        items: <String>['عربي', 'english', 'frensh']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: CustomText(
                              text: value.toUpperCase(),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CustomText(
                        text: S.of(context).notifications,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      const Spacer(),
                      Switch(
                          activeColor: Colors.blue,
                          value: _isSwitchOn,
                          onChanged: (value) {
                            setState(() {
                              _isSwitchOn = !_isSwitchOn;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
