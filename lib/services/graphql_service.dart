import 'package:dotenv/dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  static final GraphQLService _singleton = GraphQLService._internal();

  bool _initialized = false;

  late AuthLink authLink;
  late HttpLink httpLink;
  late Link link;
  late GraphQLClient client;

  String? _token;
  String _headerKey = 'Authorization';

  Map<String, String> _httpHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Apollo-Require-Preflight': 'true'
  };

  /// Set [token] and re-init the client
  set token(String token) {
    _initialized = false;
    _token = token;
    _init();
  }

  /// Set [headerKey] and re-init the client
  set headerKey(String headerKey) {
    _initialized = false;
    _headerKey = headerKey;
    _init();
  }

  /// Set [httpHeaders] and re-init the client
  set httpHeaders(Map<String, String> headers) {
    _initialized = false;
    _httpHeaders = headers;
    _init();
  }

  factory GraphQLService({GraphQLClient? testClient}) {
    if (testClient != null) {
      return GraphQLService._internal(testClient: testClient);
    }
    return _singleton;
  }

  /// The init() method is automatically called when [GraphQLService] instantiated or GraphQLService.client is accessed,
  /// but only if the client has not been initialized yet (i.e., when _initialized is false).
  GraphQLService._internal({GraphQLClient? testClient}) {
    if (_initialized) return;
    _init(testClient: testClient);
  }

  Future<String?> _getToken() async {
    return _token;
  }

  Future<void> _init({GraphQLClient? testClient}) async {
    try {
      /// Load environment variables at runtime from a .env file.
      /// see https://pub.dev/packages/dotenv
      var env = DotEnv(includePlatformEnvironment: true)..load();

      String? baseUrl = env['BASE_URL'];
      // String? baseUrl = "http://localhost:3000/graphql";

      if (baseUrl == null) {
        throw Exception("Failed to read base URL from .env");
      }

      authLink = AuthLink(getToken: _getToken, headerKey: _headerKey);

      httpLink = HttpLink(
        baseUrl,
        defaultHeaders: _httpHeaders,
      );

      /// The order of the links in the array matters!
      link = Link.from([authLink, httpLink]);

      client = testClient ??
          GraphQLClient(
            link: link,
            cache: GraphQLCache(),
            defaultPolicies: DefaultPolicies(),
          );

      _initialized = true;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
