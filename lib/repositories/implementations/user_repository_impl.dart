import 'package:flutter_graphql_client_template/utils/gql_error_parser.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/operations/mutation/generated/user_update_one.graphql.dart';
import '../../graphql/operations/query/generated/user_find_one.graphql.dart';
import '../../services/graphql_service.dart';
import '../../utils/gql_result.dart';
import '../interfaces/user_repository.dart';

class GqlUserRepositoryImpl implements GqlUserRepository {
  final GraphQLClient client;

  GqlUserRepositoryImpl({GraphQLClient? client}) : client = client ?? GraphQLService().client;

  @override
  Future<GqlResult<Query$UserFindOne?>> userFindOne({
    required String userId,
  }) async {
    try {
      final result = await client.query(
        QueryOptions(
          document: documentNodeQueryUserFindOne,
          parserFn: (data) => Query$UserFindOne.fromJson(data),
          variables: {
            "where": {"userId": userId},
          },
        ),
      );

      if (result.hasException) {
        return GqlResult.error(gqlErrorParser(result));
      }

      return GqlResult.success(result.parsedData);
    } catch (e) {
      return GqlResult.error(e.toString());
    }
  }

  @override
  Future<GqlResult<Mutation$UserUpdateOne?>> userUpdateOne({
    required String userId,
    required String fullName,
    required String email,
  }) async {
    try {
      final result = await client.mutate(
        MutationOptions(
          document: documentNodeMutationUserUpdateOne,
          parserFn: (data) => Mutation$UserUpdateOne.fromJson(data),
          variables: {
            "where": {"userId": userId},
            "data": {
              "fullname": {"set": fullName},
              "email": {"set": email},
            }
          },
        ),
      );

      if (result.hasException) {
        return GqlResult.error(gqlErrorParser(result));
      }

      return GqlResult.success(result.parsedData);
    } catch (e) {
      return GqlResult.error(e.toString());
    }
  }
}
