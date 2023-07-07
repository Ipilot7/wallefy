import 'package:flutter/material.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('MainPage'),
//       ),
//       bottomNavigationBar: BottomAppBar(),
//     );
//   }
// }
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State createState() => _MainPageDemoState();
}

class _MainPageDemoState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create',
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.blue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
