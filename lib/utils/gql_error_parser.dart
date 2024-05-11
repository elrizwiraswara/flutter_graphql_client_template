import 'package:graphql_flutter/graphql_flutter.dart';

String gqlErrorParser(QueryResult res) {
  var code = res.exception?.graphqlErrors.firstOrNull?.extensions?['code'];
  var graphqlErrors = res.exception?.graphqlErrors.firstOrNull?.message;
  var linkException = res.exception?.linkException?.originalException?.toString();

  return "${graphqlErrors ?? linkException}." + (code != null ? "\n\n[$code]" : "");
}
