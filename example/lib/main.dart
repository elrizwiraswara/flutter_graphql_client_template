import 'package:flutter/material.dart';
import 'package:flutter_graphql_client_template/graphql/operations/query/generated/user_find_one.graphql.dart';
import 'package:flutter_graphql_client_template/repositories/implementations/user_repository_impl.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Query$UserFindOne$userFindOne? user;

  String? error;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getUser();
    });
    super.initState();
  }

  void getUser() async {
    var res = await GqlUserRepositoryImpl().userFindOne(
      userId: '1',
    );

    // You can also use [res.isSuccess]
    if (!res.isHasError) {
      user = res.data?.userFindOne;
      setState(() {});
    } else {
      error = res.error;
      setState(() {});
    }
  }

  void updatedUser() async {
    final messenger = ScaffoldMessenger.of(context);

    var res = await GqlUserRepositoryImpl().userUpdateOne(
      userId: '1',
      email: 'email',
      fullName: 'fullname',
    );

    if (!res.isHasError) {
      messenger.showSnackBar(
        const SnackBar(content: Text('User updated!')),
      );
    } else {
      messenger.showSnackBar(
        SnackBar(content: Text('${res.error}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello!',
            ),
            Text(
              user?.fullName ?? error ?? 'Loading...',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updatedUser,
        tooltip: 'Update User',
        child: const Icon(Icons.add),
      ),
    );
  }
}
