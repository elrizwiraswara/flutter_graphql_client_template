# flutter_graphql_client_template
A basic template for creating a GraphQL client in Flutter.
## Description
The flutter_graphql_client_template is a foundational template designed to facilitate the development of GraphQL clients in Flutter. This template provides a basic structure that includes the necessary components for establishing a connection with a GraphQL server and executing queries and mutations.

Whether you’re a seasoned developer or just starting out with Flutter and GraphQL, this template serves as a great starting point, speeding up the initial setup process and promoting best practices in GraphQL client development.

Please note that while this template provides a basic structure, you may need to modify and adapt it according to the specific requirements of your project. 
## Getting Started
### Dependencies
* dotenv: ^4.2.0
* graphql_flutter: ^5.1.2
* flutter_test:
    sdk: flutter
* lints: ^2.0.0
* build_runner: ^2.4.6
* flutter_gen: ^5.2.0
* graphql_codegen: ^0.13.5
* mockito: ^5.4.4


### Get GraphQL Schema
Retrieve the GraphQL Schema using either `get-graphql-schema` or alternatively, you can manually download/copy it and place it into `lib/schema/schema.graphql`
### Install using yarn
```
yarn global add get-graphql-schema
```

### Install using npm
```
npm install -g get-graphql-schema
```
### Get GraphQL Schema with this command
```
npx get-graphql-schema http://localhost:8000/graphql > lib/schema/schema.graphql
```

### Add operations
Create and add operations into:

> lib/operations/query/query_operation_name.graphql

> lib/operations/mutation/mutation_operation_name.graphql

### Generate GraphQL
```
dart run build_runner build
```
## How To Use
```
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
```
See [example](example/lib/main.dart) for details
## Testing
```
flutter test
```
See [test](test/) for test examples

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
