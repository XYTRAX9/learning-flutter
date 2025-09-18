import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Learning());
}

class Learning extends StatelessWidget {
  const Learning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        listTileTheme:  ListTileThemeData(iconColor: Colors.white),
        dividerColor: Colors.white10,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        )
      ),
      home: const MyHomePage(title: 'Tutorial App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, i) => ListTile(
            leading: SvgPicture.asset("assets/icons/Bitcoin.svg", height: 35, width: 35,),
            title: Text(
                "Bitcoin",
                style: theme.textTheme.bodyMedium,
            ),
            subtitle: Text(
                "200000\$",
                style: theme.textTheme.labelSmall,
            ),
            trailing: Icon(
              Icons.arrow_forward,

            ),
          ),
      ),
    );
  }
}
