import 'package:flutter_graphql_client_template/graphql/operations/mutation/generated/user_update_one.graphql.dart';
import 'package:flutter_graphql_client_template/graphql/operations/query/generated/user_find_one.graphql.dart';
import 'package:flutter_graphql_client_template/repositories/implementations/user_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_repository_impl_test.mocks.dart';

// Generate mock classes for GraphQLClient
@GenerateMocks([GraphQLClient])
void main() {
  // Declare variables for the mock client and the repository
  late MockGraphQLClient client;
  late UserRepositoryImpl repository;

  // Set up the mock client and the repository before all tests
  setUpAll(() async {
    client = MockGraphQLClient();
    repository = UserRepositoryImpl.UserRepositoryImpl(client: client);
  });

  // Group of tests for successful operations
  group('GqlUserRepositoryImpl Success Tests', () {
    // Test case for successful userFindOne query
    test('Query userFindOne should returns result.data', () async {
      // Define the options for the query
      final options = QueryOptions(
        document: documentNodeQueryUserFindOne,
        parserFn: (data) => Query$UserFindOne.fromJson(data),
      );

      // Define the answer to be returned by the mock client
      final answer = QueryResult(
        options: options,
        source: QueryResultSource.network,
        data: Query$UserFindOne$userFindOne(fullName: 'user').toJson(),
      );

      // When the client's query method is called, return the defined answer
      when(client.query(any)).thenAnswer((_) async => answer);

      // Call the repository's userFindOne method and get the result
      final result = await repository.userFindOne(userId: '1');

      // Verify that userFindOne returned result.data
      expect(result.data, isNotNull);
    });

    // Test case for successful userUpdateOne mutation
    test('Mutation userUpdateOne should returns result.data', () async {
      // Define the options for the mutation
      final options = QueryOptions(
        document: documentNodeMutationUserUpdateOne,
        parserFn: (data) => Mutation$UserUpdateOne.fromJson(data),
      );

      // Define the answer to be returned by the mock client
      final answer = QueryResult(
        options: options,
        source: QueryResultSource.network,
        data: Mutation$UserUpdateOne$userUpdateOne(id: '1', fullName: 'user').toJson(),
      );

      // When the client's mutate method is called, return the defined answer
      when(client.mutate(any)).thenAnswer((_) async => answer);

      // Call the repository's userUpdateOne method and get the result
      final result = await repository.userUpdateOne(
        userId: '1',
        email: 'email',
        fullName: 'name',
      );

      // Verify that userUpdateOne returned result.data
      expect(result.data, isNotNull);
    });
  });

  // Group of tests for error cases
  group('GqlUserRepositoryImpl Error Tests', () {
    // Test case for userFindOne query that returns an error
    test('Query userFindOne should returns result.error', () async {
      // Define the options for the query
      final options = QueryOptions(
        document: documentNodeQueryUserFindOne,
        parserFn: (data) => Query$UserFindOne.fromJson(data),
      );

      // Define the answer to be returned by the mock client
      final answer = QueryResult(
        options: options,
        source: QueryResultSource.network,
        exception: OperationException(graphqlErrors: [GraphQLError(message: 'error')]),
      );

      // When the client's query method is called, return the defined answer
      when(client.query(any)).thenAnswer((_) async => answer);

      // Call the repository's userFindOne method and get the result
      final result = await repository.userFindOne(userId: '1');

      // Verify that userFindOne returned result.error
      expect(result.error, isNotNull);
    });

    // Test case for userUpdateOne mutation that returns an error
    test('Mutation userUpdateOne should returns result.error', () async {
      // Define the options for the mutation
      final options = QueryOptions(
        document: documentNodeQueryUserFindOne,
        parserFn: (data) => Query$UserFindOne.fromJson(data),
      );

      // Define the answer to be returned by the mock client
      final answer = QueryResult(
        options: options,
        source: QueryResultSource.network,
        exception: OperationException(graphqlErrors: [GraphQLError(message: 'error')]),
      );

      // When the client's mutate method is called, return the defined answer
      when(client.mutate(any)).thenAnswer((_) async => answer);

      // Call the repository's userUpdateOne method and get the result
      final result = await repository.userUpdateOne(
        userId: '1',
        email: 'email',
        fullName: 'name',
      );

      // Verify that userUpdateOne returned result.error
      expect(result.error, isNotNull);
    });
  });
}
