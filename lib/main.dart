import 'package:delivery_client_app/presentation/provider/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:delivery_client_app/presentation/routes/route_generator.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemesProvider>(
      create: (_) => ThemesProvider(darkTheme: false), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the r oot of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return FlutterSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: context.watch<ThemesProvider>().themeData,
          initialRoute: '/details',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          builder: EasyLoading.init(),
        );
      });
    });
  }
}
