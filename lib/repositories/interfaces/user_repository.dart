import '../../utils/gql_result.dart';

abstract class GqlUserRepository {
  Future<GqlResult> userFindOne({
    required String userId,
  });

  Future<GqlResult> userUpdateOne({
    required String userId,
    required String fullName,
    required String email,
  });

  // Add other methods as needed
}
