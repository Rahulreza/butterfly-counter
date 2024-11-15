import '../../../core/path/file_path.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBloc>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ButterFly Counter"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              homeBloc.add(CounterIncrementEvent());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              homeBloc.add(CounterDecrementEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              homeBloc.add(CounterResetEvent());
            },
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return SafeArea(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              for (int index = 0; index < state.count; index++)
                Positioned(
                  left: Random().nextInt(250).toDouble(),
                  top: Random().nextInt(400).toDouble(),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/images/butterfly.png"),
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}
