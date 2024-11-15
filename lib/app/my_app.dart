import 'package:counter/feature/core/path/file_path.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context) => HomeBloc(),
          ),
        ],
        child:  const HomePage(),
      ),
    );
  }
}
