import 'package:dotenv/dotenv.dart';
import 'package:flutter_graphql_client_template/services/graphql_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GraphQLService() Initialization', () {
    test('GraphQLService().init() should automatically initialize the client', () async {
      // Verify that the client was initialized automatically
      expect(GraphQLService().client, isNotNull);
    });

    test('GraphQLService().httpLink.uri must be the same as the loaded uri from DotEnv', () async {
      var env = DotEnv(includePlatformEnvironment: true)..load();

      String? baseUrl = env['BASE_URL'];

      // Verify that the GraphQLService().httpLink.uri was same as loaded baseUrl
      expect(GraphQLService().httpLink.uri.toString(), baseUrl);
    });
  });

  group('GraphQLService() setter', () {
    test('GraphQLService() token must be the same as the new token set', () async {
      GraphQLService().token = "token";

      var token = await GraphQLService().authLink.getToken();

      // Verify that the client was initialized 
      expect(GraphQLService().client, isNotNull);
      // Verify the new token
      expect(token, 'token');
    });

    test('GraphQLService() headerKey must be the same as the new headerKey set', () async {
      GraphQLService().headerKey = "headerKey";

      var headerKey = await GraphQLService().authLink.headerKey;

      // Verify that the client was initialized
      expect(GraphQLService().client, isNotNull);
      // Verify the new headerKey
      expect(headerKey, 'headerKey');
    });

    test('GraphQLService() httpHeaders must be the same as the new httpHeaders set', () async {
      GraphQLService().httpHeaders = {'Accept': 'application/json'};

      var httpHeaders = await GraphQLService().httpLink.defaultHeaders;

      // Verify that the client was initialized
      expect(GraphQLService().client, isNotNull);
      // Verify the new httpHeaders
      expect(httpHeaders, {'Accept': 'application/json'});
    });
  });
}
