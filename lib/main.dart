import 'package:fast_database_sync/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const AppWidget());
}

class AppFirebase extends StatefulWidget {
  const AppFirebase({Key? key}) : super(key: key);

  @override
  AppFirebaseState createState() => AppFirebaseState();
}

class AppFirebaseState extends State<AppFirebase> {
  final _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Não foi possível inicializar o Firebase',
                  textDirection: TextDirection.ltr,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Tente novamente em alguns instantes.',
                  textDirection: TextDirection.ltr,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return const AppWidget();
        }

        return const SizedBox();
      },
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: AppRoutes().routes,
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const <Locale>[Locale('pt', 'BR')],
    );
  }
}
