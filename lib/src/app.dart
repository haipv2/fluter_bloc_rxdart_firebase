import 'package:bloc_rxdart_firebase/src/blocs/goals_bloc_provider.dart';
import 'package:bloc_rxdart_firebase/src/blocs/login_bloc_provider.dart';
import 'package:bloc_rxdart_firebase/src/ui/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBlocProvider(
      child: GoalsBlocProvider(
        child: MaterialApp(
          theme: ThemeData(
            accentColor: Colors.black,
            primaryColor: Colors.amber,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Goals",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.amber,
              elevation: 0.0,
            ),
            body: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
