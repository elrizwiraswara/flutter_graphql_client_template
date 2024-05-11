import '../../../schema/generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserFindOne {
  factory Variables$Query$UserFindOne(
          {required Input$UserWhereUniqueInput where}) =>
      Variables$Query$UserFindOne._({
        r'where': where,
      });

  Variables$Query$UserFindOne._(this._$data);

  factory Variables$Query$UserFindOne.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$UserWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Query$UserFindOne._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserWhereUniqueInput get where =>
      (_$data['where'] as Input$UserWhereUniqueInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$UserFindOne<Variables$Query$UserFindOne>
      get copyWith => CopyWith$Variables$Query$UserFindOne(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserFindOne) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Query$UserFindOne<TRes> {
  factory CopyWith$Variables$Query$UserFindOne(
    Variables$Query$UserFindOne instance,
    TRes Function(Variables$Query$UserFindOne) then,
  ) = _CopyWithImpl$Variables$Query$UserFindOne;

  factory CopyWith$Variables$Query$UserFindOne.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserFindOne;

  TRes call({Input$UserWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Query$UserFindOne<TRes>
    implements CopyWith$Variables$Query$UserFindOne<TRes> {
  _CopyWithImpl$Variables$Query$UserFindOne(
    this._instance,
    this._then,
  );

  final Variables$Query$UserFindOne _instance;

  final TRes Function(Variables$Query$UserFindOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$UserFindOne._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$UserWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserFindOne<TRes>
    implements CopyWith$Variables$Query$UserFindOne<TRes> {
  _CopyWithStubImpl$Variables$Query$UserFindOne(this._res);

  TRes _res;

  call({Input$UserWhereUniqueInput? where}) => _res;
}

class Query$UserFindOne {
  Query$UserFindOne({
    this.userFindOne,
    this.$__typename = 'Query',
  });

  factory Query$UserFindOne.fromJson(Map<String, dynamic> json) {
    final l$userFindOne = json['userFindOne'];
    final l$$__typename = json['__typename'];
    return Query$UserFindOne(
      userFindOne: l$userFindOne == null
          ? null
          : Query$UserFindOne$userFindOne.fromJson(
              (l$userFindOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserFindOne$userFindOne? userFindOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userFindOne = userFindOne;
    _resultData['userFindOne'] = l$userFindOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userFindOne = userFindOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userFindOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFindOne) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userFindOne = userFindOne;
    final lOther$userFindOne = other.userFindOne;
    if (l$userFindOne != lOther$userFindOne) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserFindOne on Query$UserFindOne {
  CopyWith$Query$UserFindOne<Query$UserFindOne> get copyWith =>
      CopyWith$Query$UserFindOne(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserFindOne<TRes> {
  factory CopyWith$Query$UserFindOne(
    Query$UserFindOne instance,
    TRes Function(Query$UserFindOne) then,
  ) = _CopyWithImpl$Query$UserFindOne;

  factory CopyWith$Query$UserFindOne.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFindOne;

  TRes call({
    Query$UserFindOne$userFindOne? userFindOne,
    String? $__typename,
  });
  CopyWith$Query$UserFindOne$userFindOne<TRes> get userFindOne;
}

class _CopyWithImpl$Query$UserFindOne<TRes>
    implements CopyWith$Query$UserFindOne<TRes> {
  _CopyWithImpl$Query$UserFindOne(
    this._instance,
    this._then,
  );

  final Query$UserFindOne _instance;

  final TRes Function(Query$UserFindOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userFindOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFindOne(
        userFindOne: userFindOne == _undefined
            ? _instance.userFindOne
            : (userFindOne as Query$UserFindOne$userFindOne?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserFindOne$userFindOne<TRes> get userFindOne {
    final local$userFindOne = _instance.userFindOne;
    return local$userFindOne == null
        ? CopyWith$Query$UserFindOne$userFindOne.stub(_then(_instance))
        : CopyWith$Query$UserFindOne$userFindOne(
            local$userFindOne, (e) => call(userFindOne: e));
  }
}

class _CopyWithStubImpl$Query$UserFindOne<TRes>
    implements CopyWith$Query$UserFindOne<TRes> {
  _CopyWithStubImpl$Query$UserFindOne(this._res);

  TRes _res;

  call({
    Query$UserFindOne$userFindOne? userFindOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserFindOne$userFindOne<TRes> get userFindOne =>
      CopyWith$Query$UserFindOne$userFindOne.stub(_res);
}

const documentNodeQueryUserFindOne = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserFindOne'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userFindOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'fullName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$UserFindOne _parserFn$Query$UserFindOne(Map<String, dynamic> data) =>
    Query$UserFindOne.fromJson(data);
typedef OnQueryComplete$Query$UserFindOne = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserFindOne?,
);

class Options$Query$UserFindOne
    extends graphql.QueryOptions<Query$UserFindOne> {
  Options$Query$UserFindOne({
    String? operationName,
    required Variables$Query$UserFindOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserFindOne? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserFindOne? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$UserFindOne(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserFindOne,
          parserFn: _parserFn$Query$UserFindOne,
        );

  final OnQueryComplete$Query$UserFindOne? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserFindOne
    extends graphql.WatchQueryOptions<Query$UserFindOne> {
  WatchOptions$Query$UserFindOne({
    String? operationName,
    required Variables$Query$UserFindOne variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserFindOne? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryUserFindOne,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserFindOne,
        );
}

class FetchMoreOptions$Query$UserFindOne extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserFindOne({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$UserFindOne variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryUserFindOne,
        );
}

extension ClientExtension$Query$UserFindOne on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserFindOne>> query$UserFindOne(
          Options$Query$UserFindOne options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$UserFindOne> watchQuery$UserFindOne(
          WatchOptions$Query$UserFindOne options) =>
      this.watchQuery(options);
  void writeQuery$UserFindOne({
    required Query$UserFindOne data,
    required Variables$Query$UserFindOne variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserFindOne),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserFindOne? readQuery$UserFindOne({
    required Variables$Query$UserFindOne variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserFindOne),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserFindOne.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserFindOne> useQuery$UserFindOne(
        Options$Query$UserFindOne options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$UserFindOne> useWatchQuery$UserFindOne(
        WatchOptions$Query$UserFindOne options) =>
    graphql_flutter.useWatchQuery(options);

class Query$UserFindOne$Widget
    extends graphql_flutter.Query<Query$UserFindOne> {
  Query$UserFindOne$Widget({
    widgets.Key? key,
    required Options$Query$UserFindOne options,
    required graphql_flutter.QueryBuilder<Query$UserFindOne> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$UserFindOne$userFindOne {
  Query$UserFindOne$userFindOne({
    required this.fullName,
    this.$__typename = 'User',
  });

  factory Query$UserFindOne$userFindOne.fromJson(Map<String, dynamic> json) {
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$UserFindOne$userFindOne(
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserFindOne$userFindOne) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserFindOne$userFindOne
    on Query$UserFindOne$userFindOne {
  CopyWith$Query$UserFindOne$userFindOne<Query$UserFindOne$userFindOne>
      get copyWith => CopyWith$Query$UserFindOne$userFindOne(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserFindOne$userFindOne<TRes> {
  factory CopyWith$Query$UserFindOne$userFindOne(
    Query$UserFindOne$userFindOne instance,
    TRes Function(Query$UserFindOne$userFindOne) then,
  ) = _CopyWithImpl$Query$UserFindOne$userFindOne;

  factory CopyWith$Query$UserFindOne$userFindOne.stub(TRes res) =
      _CopyWithStubImpl$Query$UserFindOne$userFindOne;

  TRes call({
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserFindOne$userFindOne<TRes>
    implements CopyWith$Query$UserFindOne$userFindOne<TRes> {
  _CopyWithImpl$Query$UserFindOne$userFindOne(
    this._instance,
    this._then,
  );

  final Query$UserFindOne$userFindOne _instance;

  final TRes Function(Query$UserFindOne$userFindOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserFindOne$userFindOne(
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserFindOne$userFindOne<TRes>
    implements CopyWith$Query$UserFindOne$userFindOne<TRes> {
  _CopyWithStubImpl$Query$UserFindOne$userFindOne(this._res);

  TRes _res;

  call({
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}
